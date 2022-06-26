import * as React from 'react';
import Table from '@mui/material/Table';
import TableBody from '@mui/material/TableBody';
import TableCell from '@mui/material/TableCell';
import TableContainer from '@mui/material/TableContainer';
import TableHead from '@mui/material/TableHead';
import TableRow from '@mui/material/TableRow';
import Paper from '@mui/material/Paper';
import { makeStyles } from "@material-ui/core/styles"
import { Box } from '@mui/material';

function createData(schoolName,courseName,lastRank,currRank,wgpa,wgpaDetails) {
  return {schoolName,courseName,lastRank,currRank,wgpa,wgpaDetails};
}

const rows = [
  createData("padma school","CS",121,100,7.44,"A+"),
  createData("padma school","CS",121,100,7.44,"A+"),
  createData("padma school","CS",121,100,7.44,"A+"),
  createData("padma school","CS",121,100,7.44,"A+"),
  createData("padma school","CS",121,100,7.44,"A+"),
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
  tableHeaderCell: {
    fontWeight: 'bold',
    backgroundColor: theme.palette.primary.dark,
    color: theme.palette.getContrastText(theme.palette.primary.dark)
  }
}));


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
  return (
    <Box sx={{display:'flex',alignItems:'center',flexDirection:'column'}}>
    <TableContainer component={Paper} className={classes.tableContainer}>
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
    </TableContainer>
    </Box>
        
  )
}


export default AllotmentResult;