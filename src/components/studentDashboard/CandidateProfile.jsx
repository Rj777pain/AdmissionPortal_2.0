import React from 'react'
import { Box, Button, Grid, } from '@mui/material';
import { makeStyles } from '@material-ui/core';



const useStyles = makeStyles((theme) => ({
  text: {
    fontSize: '1.2rem',
    color: '#05152e',
    fontWeight: '500',

  },
  textField: {
    width: "500px",
    height: "50px"
  },
  textField2: {
    width: "100px",

  },
  
}));
function CandidateProfile() {
  const classes = useStyles();
  const profile = [{ "name": "Name", "value": "Ravi" },
  { "name": "Admission Number", "value": "123456" },
  { "name": "Outgoing Institution", "value": "GHSS Thrissur" },
  { "name": "Email Address", "value": "ravi@gmail.com" },
  { "name": "Phome Number", "value": "9876543210" },
  { "name": "Adhaar Number", "value": "123456447894" }];
  return (
    <Box sx={{ display: 'flex', alignItems: 'center',justifyContent:'start', flexDirection: 'column' }}>
      <Box sx={{ textAlign: 'center', fontSize: '1.5rem', fontWeight: '600', marginTop: '30px', marginBottom: '20px' }}>Candidate Profile</Box>
      <CustomBox name="Name" value="Ravi" />
      <CustomBox name="Admission Number" value="123456" />
      <CustomBox name="Outgoing Institution" value="GHSS Thrissur" />
      <CustomBox name="Email Address" value="ravi@gmail.com" />
      <CustomBox name="Phome Number" value="9876543210" />
      <CustomBox name="Adhaar Number" value="123456447894" />
      <br/>
      <Button

        sx={{
          top:"420px",right:"480px",position:'absolute',backgroundColor: '#8a1703', color: 'white', textTransform: 'none',height: '38px', "&:hover": {
            backgroundColor: '#d92f11',
          },
        }}
        variant="contained"
        
      >
        Reset Password
      </Button>
    </Box>
  )
}

function CustomBox(props) {
  const classes = useStyles();
  return (<Grid container sx={{ display: 'flex', alignContent: 'center', justifyContent: 'space-between', width: '600px', marginTop: '10px' }}>
    <Grid item md={6} className={classes.text}>{props.name}</Grid>
    <Grid item md={6} className={classes.text}>{props.value}</Grid>
  </Grid>)
}

export default CandidateProfile