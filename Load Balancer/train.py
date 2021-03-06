from pandas import DataFrame
from pandas import Series
from pandas import concat
from pandas import read_csv
from datetime import datetime
from pandas import Grouper
from sklearn.metrics import mean_squared_error
from sklearn.preprocessing import MinMaxScaler
from keras.models import Sequential
from keras.layers import Dense
from keras.layers import LSTM
from math import sqrt
from matplotlib import pyplot
import numpy
from pickle import dump

# date-time parsing function for loading the dataset
def parser(x):
  x = x[:-4]
  return datetime.strptime(x, '%Y-%m-%dT%H:%M:%S')

def parser2(x):
  return datetime.strptime(x, '%Y-%m-%d')


# frame a sequence as a supervised learning problem
def timeseries_to_supervised(data, lag=1):
	df = DataFrame(data)
	columns = [df.shift(i) for i in range(1, lag+1)]
	columns.append(df)
	df = concat(columns, axis=1)
	df.fillna(0, inplace=True)
	return df

# create a differenced series
def difference(dataset, interval=1):
	diff = list()
	for i in range(interval, len(dataset)):
		value = dataset[i] - dataset[i - interval]
		diff.append(value)
	return Series(diff)

# invert differenced value
def inverse_difference(history, yhat, interval=1):
	return yhat + history[-interval]

# scale train and test data to [-1, 1]
def scale(train):
	# fit scaler
	scaler = MinMaxScaler(feature_range=(-1, 1))
	scaler = scaler.fit(train)
	# transform train
	train = train.reshape(train.shape[0], train.shape[1])
	train_scaled = scaler.transform(train)

	return scaler, train_scaled

# inverse scaling for a forecasted value
def invert_scale(scaler, X, value):
	new_row = [x for x in X] + [value]
	array = numpy.array(new_row)
	array = array.reshape(1, len(array))
	inverted = scaler.inverse_transform(array)
	return inverted[0, -1]

# fit an LSTM network to training data
def fit_lstm(train, batch_size, nb_epoch, neurons):
	X, y = train[:, 0:-1], train[:, -1]
	X = X.reshape(X.shape[0], 1, X.shape[1])
	model = Sequential()
	model.add(LSTM(neurons, batch_input_shape=(batch_size, X.shape[1], X.shape[2]), stateful=True))
	model.add(Dense(1))
	model.add(Dense(1))
	model.add(Dense(1))
	model.compile(loss='mean_squared_error', optimizer='adam')
	for i in range(nb_epoch):
		model.fit(X, y, epochs=1, batch_size=batch_size, verbose=0, shuffle=False)
		model.reset_states()
	return model

# make a one-step forecast
def forecast_lstm(model, batch_size, X):
	X = X.reshape(1, 1, len(X))
	yhat = model.predict(X, batch_size=batch_size)
	return yhat[0,0]

# directories and parameters

data_location = '/app/Data/'
model_location = '/app/Model/'
data_prep_location = '/app/DataObjects/'



repeats = 7
numberOfEpochs = 70
numberOfNeurons = 10

def trainFunction():
	# load dataset
	series = read_csv(data_location + 'Formatted-Data.csv', header=0, parse_dates=[0], index_col=0, date_parser=parser2).squeeze("columns")

	# transform data to be stationary
	raw_values = series.values
	diff_values = difference(raw_values, 1)

	# transform data to be supervised learning
	supervised = timeseries_to_supervised(diff_values, 1)
	supervised_values = supervised.values

	train = supervised_values[:-30]

	# transform the scale of the data
	scaler, train_scaled = scale(train)

	dump(scaler, open(data_prep_location + 'scaler.pkl', 'wb'))

	# repeat experiment
	error_scores = list()
	for r in range(repeats):
		# fit the model
		lstm_model = fit_lstm(train_scaled, 1, numberOfEpochs, numberOfNeurons)
		# forecast the entire training dataset to build up state for forecasting
		train_reshaped = train_scaled[:, 0].reshape(len(train_scaled), 1, 1)
		lstm_model.predict(train_reshaped, batch_size=1)
		# walk-forward validation on the test data
		# predictions = list()
		# for i in range(len(test_scaled)):
		# 	# make one-step forecast
		# 	X, y = test_scaled[i, 0:-1], test_scaled[i, -1]
		# 	yhat = forecast_lstm(lstm_model, 1, X)
		# 	# invert scaling
		# 	yhat = invert_scale(scaler, X, yhat)
		# 	# invert differencing
		# 	yhat = inverse_difference(raw_values, yhat, len(test_scaled)+1-i)
		# 	# store forecast
		# 	predictions.append(yhat)
			# print('Percent: %.3f' % ((yhat - raw_values[len(test_scaled)+1-i]) / raw_values[len(test_scaled)+1-i] * 100))
		# report performance
		# rmse = sqrt(mean_squared_error(raw_values[-12:], predictions))
		# print('%d) Test RMSE: %.3f' % (r+1, rmse))
		# error_scores.append(rmse)

	# summarize results
	# results = DataFrame()
	# results['rmse'] = error_scores

	# Series(predictions).plot(label='Predicted Load')
	# Series(raw_values[-12:]).plot(label='Actual Load')
	# pyplot.legend()
	# pyplot.show()

	lstm_model.save(model_location)

	# return results['rmse'].mean()

	return "Training complete"
