import { makeStyles } from '@material-ui/core';
import { Box, Button, MenuItem, Paper, Table, TableBody, TableCell, TableContainer, TableHead, TableRow, TextField } from '@mui/material'
import React, { useState } from 'react'

const schools=['GHSS','GGHSS','St Joseph HSS']
const districts = ["Alappuzha", "Ernakulam", "Idukki", "Kannur", "Kasaragod", "Kollam", "Kottayam", "Kozhikode", "Malappuram", "Palakkad", "Pathanamthitta", "Thiruvananthapuram", "Thrissur", "Wayanad"];
const courses = ['Physics, Chemistry, Biology, Mathematics', 'Physics, Chemistry, Biology, Home Science', 'Physics, Chemistry,Home Science, Mathematics', 'Physics, Chemistry, Mathematics, Computer Science', 'History, Economics, Political Science, Geology', 'Business Studies, Accountancy, Economics,Political Science']

const useStyles = makeStyles((theme) => ({
  text: {
    fontSize: '1.3rem',
    color: '#05152e',
    fontWeight: '600',
    textAlign:'left',
    marginY:'10px'
  },
  textField: {
    width: "500px",
    height: "50px"
  },
  textField2: {
    width: "100px",

  },
  button: {
    height: '38px',
    textTransform: 'none'
  }
}));
function SchoolDetail() {
  const handleOnSubmit = () => {
    setTable(true)
    
  }
  const classes=useStyles();
  const [school, setSchool] = useState()
  const [district, setDistrict] = useState();
  const [table, setTable] = useState(false)
  return (
    <Box sx={{ display: 'flex', alignItems: 'center',justifyContent:'start', flexDirection: 'column' }}>
      <Box sx={{ textAlign: 'center', fontSize: '1.5rem', fontWeight: '600', marginTop: '30px', marginBottom: '20px' }}>School Details</Box>

      {/* <Box sx={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', flexDirection: 'row',width:'500px' }}>

      <TextField
          margin="normal"
          required
          select
          size='small'
          className={classes.textField}
          name="course"
          value={district}
          onChange={(e) => setDistrict(e.target.value)}
          label="Select District"
          sx={{
            "& label": {
              color: 'black'
            },
            width:'150px'
          }}

          id="course"

        >
          {
            districts.map((option,index) => (
              <MenuItem key={option} value={index}>
                {option}
              </MenuItem>
            ))
          }
        </TextField>

      <TextField
          margin="normal"
          required
          select
          size='small'
         
          className={classes.textField}
          name="school"
          value={school}
          onChange={(e) => setSchool(e.target.value)}
          label="Select School"
          sx={{
            "& label": {
              color: 'black'
            },
            width:'150px'
          }}

          id="school"

        >
          {
            schools.map((option) => (
              <MenuItem key={option} value={option}>
                {option+' '+districts[district]}
              </MenuItem>
            ))
          }
        </TextField>
        
        <Button

        sx={{backgroundColor:'black',color:'white',textTransform:'none'}}
          variant="contained"
          className={classes.button}
          onClick={handleOnSubmit}
        >
          Submit
        </Button>
        </Box> */}
          <Box className={classes.text}>{school} {districts[district]}</Box>
        <TableContainer component={Paper} sx={{ width: '800px' }}>
        <Table size="small" aria-label="a dense table">
          <TableHead>
            <TableRow>
              <TableCell sx={{ width: '100px' }}>Order</TableCell>
              <TableCell align="left" sx={{ width: '600px' }}>Course Name</TableCell>
              <TableCell align="left" sx={{ width: '100px' }}>Available Seats</TableCell>

            </TableRow>
          </TableHead>
          <TableBody>
            {courses.map((row, index) => (
              <TableRow
                key={index}
                sx={{ '&:last-child td, &:last-child th': { border: 0 } }}
              >
                <TableCell component="th" scope="row">
                  {index + 1}
                </TableCell>
                <TableCell align="left">{row}</TableCell>
                <TableCell align="left">{60}</TableCell>

              </TableRow>
            ))}
          </TableBody>
        </Table>
      </TableContainer>
    </Box>
  )
}

export default SchoolDetail