import React, { useState } from "react";
import Button from '@mui/material/Button';
import TextField from '@mui/material/TextField';
import Box from '@mui/material/Box';
import Grid from '@mui/material/Grid';
import Typography from '@mui/material/Typography';
import { Container, Select } from "@mui/material";
import MenuItem from '@mui/material/MenuItem';
import theme from '../../theme';
import { makeStyles } from "@material-ui/core"

const useStyles = makeStyles((theme) => ({
  paper: {
    display: "flex",
    
    
    padding: "10px",
    paddingBottom: "20px",

    flexDirection: "column",
    alignItems: "center",
    verticalAlign: "center",
  },

  
  submit: {
    height: 40,
    

  },
  textField: {
    width: "80vh",
  },
}));



function RegistrationPassword(props) {
  const handleCallback = () => {

    console.log('sss');

    props.callback();
  };
  const classes = useStyles();
  return (

  

      


      <Box component="form" className={classes.paper} noValidate onSubmit={handleCallback} sx={{ mt: 0.2 }}>

      <Typography component="h1" sx={{ textAlign: 'center', fontSize: 30, fontWeight: 700, color: '#112c57' }}>
        Password Verification
      </Typography>

        <TextField
          margin="normal"
          required
          className={classes.textField}
          name="newPassword"
          label="Enter Password"
          type="password"
          id="newPassword"

        />

        <TextField
          margin="normal"
          required
          className={classes.textField}
          name="reenterPassword"
          label="Re-enter Password"
          type="reenterPassword"
          id="reenterPassword"

        />
        <Box sx={{textAlign:'right',pr:2,mt:2,float: 'right'}}>
        <Button
          type="submit"
          className={classes.submit}
          variant="contained"
        >
          Confirm Password
        </Button></Box>
      </Box>
   
  )
}

export default RegistrationPassword