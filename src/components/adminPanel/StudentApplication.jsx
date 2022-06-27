import { makeStyles } from '@material-ui/core';
import { Box, Button, MenuItem, Paper, Table, TableBody, TableCell, TableContainer, TableHead, TableRow, TextField } from '@mui/material'
import React, { useState } from 'react'

const schools=['GHSS','GGHSS','St Joseph HSS']
const districts = ["Alappuzha", "Ernakulam", "Idukki", "Kannur", "Kasaragod", "Kollam", "Kottayam", "Kozhikode", "Malappuram", "Palakkad", "Pathanamthitta", "Thiruvananthapuram", "Thrissur", "Wayanad"];
const courses = ['Physics, Chemistry, Biology, Mathematics', 'Physics, Chemistry, Biology, Home Science', 'Physics, Chemistry,Home Science, Mathematics', 'Physics, Chemistry, Mathematics, Computer Science', 'History, Economics, Political Science, Geology', 'Business Studies, Accountancy, Economics,Political Science']
const student = [{'name':'Ravi','school':'GHSS','admissionNo':123456,'percentage':100},{'name':'Rahul','school':'GGHSS','admissionNo':123457,'percentage':100},{'name':'Harry','school':'St Thomas','admissionNo':123446,'percentage':100},{'name':'Seetha','school':'GGHSS','admissionNo':163456,'percentage':100}]
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
function StudentApplication() {
  const handleOnSubmit = () => {
    setTable(true)
    
  }
  const classes=useStyles();
  const [district, setDistrict] = useState();
  const [table, setTable] = useState(false)
  return (
    <Box sx={{ display: 'flex', alignItems: 'center',justifyContent:'start', flexDirection: 'column' }}>
      <Box sx={{ textAlign: 'center', fontSize: '1.5rem', fontWeight: '600', marginTop: '30px', marginBottom: '20px' }}>School Details</Box>

      <Box sx={{ display: 'flex', alignItems: 'center', justifyContent: 'space-around', flexDirection: 'row',width:'500px' }}>

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
          onClick={()=>setTable(false)}
          sx={{
            "& label": {
              color: 'black'
            },
            width:'300px'
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

      
        
        <Button

        sx={{backgroundColor:'black',color:'white',textTransform:'none'}}
          variant="contained"
          className={classes.button}
          onClick={handleOnSubmit}
        >
          Submit
        </Button>
        </Box>
          
        {table && <TableContainer component={Paper} sx={{ width: '800px' }}>
        <Table size="small" aria-label="a dense table">
          <TableHead>
            <TableRow>
              <TableCell sx={{ }}>Sl No</TableCell>
              <TableCell align="left" sx={{  }}>Candidate Name</TableCell>
              <TableCell align="left" sx={{  }}>Admission No</TableCell>
              <TableCell align="left" sx={{  }}>School Name</TableCell>
              <TableCell align="left" sx={{  }}>Percentage</TableCell>

            </TableRow>
          </TableHead>
          <TableBody>
            {student.map((row, index) => (
              <TableRow
                key={index}
                sx={{ '&:last-child td, &:last-child th': { border: 0 } }}
              >
                <TableCell component="th" scope="row">
                  {index + 1}
                </TableCell>
                <TableCell align="left">{row.name}</TableCell>
                <TableCell align="left">{row.admissionNo}</TableCell>
                <TableCell align="left">{row.school} {districts[district]}</TableCell>
                <TableCell align="left">{row.percentage}</TableCell>

              </TableRow>
            ))}
          </TableBody>
        </Table>
      </TableContainer>}
    </Box>
  )
}

export default StudentApplication