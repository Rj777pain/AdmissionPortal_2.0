import os
import math

def getPrediction():
    result = os.popen("curl localhost:8000/predict").read()
    return int(result.split(" ")[2][:-1])

currentReplicaCount = 1

while(True):
    print("1)Predict and scale\n2)Scale Up\n3)Scale Down\n4)Containers\n5)Exit")
    choice = int(input())
    if(choice == 1):
        load = getPrediction()
        replicas = math.ceil(load / 12000)
        print('Scaling to ',replicas)

        os.system("docker-compose scale portal=%d" % (replicas))
        currentReplicaCount = replicas
    if(choice == 2):
        replicas = currentReplicaCount + 1
        os.system("docker-compose scale portal=%d" % (replicas))
        currentReplicaCount = replicas
    if(choice == 3):
        if(currentReplicaCount > 0):
            replicas = currentReplicaCount - 1
            os.system("docker-compose scale portal=%d" % (replicas))
            currentReplicaCount = replicas
    if(choice == 4):
        os.system("docker ps")
    if(choice == 5):
        break