import { makeStyles } from '@material-ui/core';
import { Box, Button, TextField, Grid, MenuItem } from '@mui/material'
import React, { useState } from 'react'
import Table from '@mui/material/Table';
import TableBody from '@mui/material/TableBody';
import TableCell from '@mui/material/TableCell';
import TableContainer from '@mui/material/TableContainer';
import TableHead from '@mui/material/TableHead';
import TableRow from '@mui/material/TableRow';
import Paper from '@mui/material/Paper';

const useStyles = makeStyles((theme) => ({
  block_heading: {
    fontSize: '1.2rem',
    color: '#05152e',
    fontWeight: '600',

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
const courses = ['Physics, Chemistry, Biology, Mathematics', 'Physics, Chemistry, Biology, Home Science', 'Physics, Chemistry,Home Science, Mathematics', 'Physics, Chemistry, Mathematics, Computer Science', 'History, Economics, Political Science, Geology', 'Business Studies, Accountancy, Economics,Political Science']
const districts = ["Alappuzha", "Ernakulam", "Idukki", "Kannur", "Kasaragod", "Kollam", "Kottayam", "Kozhikode", "Malappuram", "Palakkad", "Pathanamthitta", "Thiruvananthapuram", "Thrissur", "Wayanad"];
const schools=['GHSS','GGHSS','St Joseph HSS']
const rows = [
  { 'school': 'GHSS', 'course': 1 },


];


function CourseSelection() {
  const handleOnClick = () => {
    setTable(true)
  }
  const handleOnSelect = (e) => {
    setTable(false)
    setDistrict(e.target.value)
  }
  const handleOnSubmitCourseSelection = () => {
    setselection(false)
    rows.push({ 'school': school, 'course': 1 },)
  }
  const handleOnClickAddNewRow=()=>{
    setselection(true)
  }
  const classes = useStyles();
  const [district, setDistrict] = useState();
  const [table, setTable] = useState(false);
  const [school, setschool] = useState()
  const [course, setcourse] = useState()
  const [selection, setselection] = useState(false)
  return (
    <Box sx={{ display: 'flex', alignItems: 'center', justifyContent: 'center', flexDirection: 'column' }}>
      <Box sx={{ textAlign: 'center', fontSize: '1.5rem', fontWeight: '600', marginTop: '30px', marginBottom: '20px' }}>Candidate Details</Box>
      <Box sx={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', flexDirection: 'row' }}>
        <TextField
          margin="normal"
          required
          select
          size='small'
          className={classes.textField}
          name="Name"
          value={district}
          onChange={handleOnSelect}
          label="Select District"
          sx={{
            "& label": {
              color: 'black'
            }
          }}

          id="newPassword"

        >
          {
            districts.map((option) => (
              <MenuItem key={option} value={option}>
                {option}
              </MenuItem>
            ))
          }
        </TextField>
        <Button

          onClick={handleOnClick}
          variant="contained"
          className={classes.button}
        >
          Show
        </Button>
      </Box>

      {/* schoool */}
      {
      selection && <Box sx={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', flexDirection: 'row' }}>
      <TextField
          margin="normal"
          required
          select
          size='small'
         
          className={classes.textField}
          name="school"
          value={school}
          onChange={(e) => setschool(e.target.value)}
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
                {option+' '+district}
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
          name="course"
          value={course}
          onChange={(e) => setcourse(e.target.value)}
          label="Select Course"
          sx={{
            "& label": {
              color: 'black'
            },
            width:'150px'
          }}

          id="course"

        >
          {
            courses.map((option,index) => (
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
          onClick={handleOnSubmitCourseSelection}
        >
          Add Course
        </Button>
        </Box>
}
          
      {table && <TableContainer component={Paper} sx={{ width: '800px' }}>
        <Table size="small" aria-label="a dense table">
          <TableHead>
            <TableRow>
              <TableCell>Order</TableCell>
              <TableCell align="left" sx={{ width: '300px' }}>School Name</TableCell>
              <TableCell align="left">Course</TableCell>

            </TableRow>
          </TableHead>
          <TableBody>
            {rows.map((row, index) => (
              <TableRow
                key={index}
                sx={{ '&:last-child td, &:last-child th': { border: 0 } }}
              >
                <TableCell component="th" scope="row">
                  {index + 1}
                </TableCell>
                <TableCell align="left">{row.school + ' ' + district}</TableCell>
                <TableCell align="left">{courses[row.course]}</TableCell>

              </TableRow>
            ))}
          </TableBody>
        </Table>
      </TableContainer>}
      {table && <Box sx={{ display: 'flex', alignItems: 'center', justifyItems: 'center', flexDirection: 'row',pt:'30px' }}>
        <Button


          variant="contained"
          sx={{backgroundColor:'black',color:'white',textTransform:'none'}}
          className={classes.button}
          onClick={handleOnClickAddNewRow}
        >
          Add New Row
        </Button>
        <Button

      sx={{backgroundColor:'black',color:'white',textTransform:'none',mx:'20px'}}
          variant="contained"
          className={classes.button}
        >
          Save
        </Button>
        <Button

        sx={{backgroundColor:'black',color:'white',textTransform:'none'}}
          variant="contained"
          className={classes.button}
        >
          Submit
        </Button>
      </Box>}
    </Box>
  )
}

export default CourseSelection