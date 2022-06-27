import * as React from 'react';
import { useState } from 'react';
import Table from '@mui/material/Table';
import TableBody from '@mui/material/TableBody';
import TableCell from '@mui/material/TableCell';
import TableContainer from '@mui/material/TableContainer';
import TableHead from '@mui/material/TableHead';
import TableRow from '@mui/material/TableRow';
import Paper from '@mui/material/Paper';
import { makeStyles } from "@material-ui/core/styles"
import { Box, Button, MenuItem, TextField } from '@mui/material';

function createData(schoolName,courseName,lastRank,currRank,wgpa,wgpaDetails) {
  return {schoolName,courseName,lastRank,currRank,wgpa,wgpaDetails};
}

const rows = [
  createData("padma school","CS",121,100,7.44,"A+"),
  createData("Rajeev school","CS",121,100,7.44,"A+"),
  createData("Sardar school","CS",121,100,7.44,"A+"),
  createData("Don school","CS",121,100,7.44,"A+"),
  createData("Peramora school","CS",121,100,7.44,"A+"),
]

const useStyles = makeStyles((theme) => ({
  table:{
    minWidth: 100,
  },
  tableContainer:{
    borderRadius: 10,
    margin: '10px 10px',
    width:'900px'
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
  },
  tableHeaderCell: {
    fontWeight: 'bold',
    backgroundColor: theme.palette.primary.dark,
    color: theme.palette.getContrastText(theme.palette.primary.dark)
  }
}));

const districts = ["Alappuzha", "Ernakulam", "Idukki", "Kannur", "Kasaragod", "Kollam", "Kottayam", "Kozhikode", "Malappuram", "Palakkad", "Pathanamthitta", "Thiruvananthapuram", "Thrissur", "Wayanad"];

function AllotmentResult() {

/*
  var allotmentList = [
    {schoolName:"padma school",courseName:"CS",lastRank:121,currRank:100,wgpa:7.44,wgpaDetails:"A+"},
    {schoolName:"Rajeev Gandhi School",courseName:"CS",lastRank:121,currRank:100,wgpa:7.44,wgpaDetails:"A+"},
    {schoolName:"Vijaya raja Shool",courseName:"CS",lastRank:121,currRank:100,wgpa:7.44,wgpaDetails:"A+"},
    {schoolName:"Don Campus",courseName:"CS",lastRank:121,currRank:100,wgpa:7.44,wgpaDetails:"A+"},
];
*/
  const classes = useStyles();
  const [district, setDistrict] = useState();
  const [table, setTable] = useState(false)
  const handleOnClick = () => {
    setTable(true)
  }
  const handleOnSelect = (e) => {
    setTable(false)
    setDistrict(e.target.value)
  }
  return (
    <Box sx={{display:'flex',alignItems:'center',flexDirection:'column'}}>
      <Box sx={{ textAlign: 'center', fontSize: '1.5rem', fontWeight: '600', marginTop: '30px', marginBottom: '20px' }}>Allotment Result</Box>

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
    {table &&<TableContainer component={Paper} className={classes.tableContainer}>
      <Table className={classes.table} aria-label="simple table">
        <TableHead>
          <TableRow>
            <TableCell className={classes.tableHeaderCell} >School Name</TableCell>
            <TableCell className={classes.tableHeaderCell} align="right">Course Name</TableCell>
            <TableCell className={classes.tableHeaderCell} align="right">Last Rank</TableCell>
            <TableCell className={classes.tableHeaderCell} align="right">Current Rank</TableCell>
            <TableCell className={classes.tableHeaderCell} align="right">WGPA</TableCell>
            <TableCell className={classes.tableHeaderCell} align="right">WGPA Details</TableCell>
          </TableRow>
        </TableHead>
        <TableBody>
          {rows.map((row) => (
            <TableRow
              key={row.schoolName}
              sx={{ '&:last-child td, &:last-child th': { border: 0 } }}
            >
              <TableCell component="th" scope="row">
                {row.schoolName}
              </TableCell>
              <TableCell align="right">{row.courseName}</TableCell>
              <TableCell align="right">{row.lastRank}</TableCell>
              <TableCell align="right">{row.currRank}</TableCell>
              <TableCell align="right">{row.wgpa}</TableCell>
              <TableCell aling="right">{row.wgpaDetails}</TableCell>
            </TableRow>
          ))}
        </TableBody>
      </Table>
    </TableContainer>}
    </Box>
        
  )
}


export default AllotmentResult;