import React, { useState } from "react";
import DatePicker from "react-datepicker";
import Axios from "axios";

import Button from '@mui/material/Button';
import TextField from '@mui/material/TextField';
import FormControlLabel from '@mui/material/FormControlLabel';
import Checkbox from '@mui/material/Checkbox';
import Link from '@mui/material/Link';
import Box from '@mui/material/Box';
import InputLabel from '@mui/material/InputLabel';
import Grid from '@mui/material/Grid';
import Typography from '@mui/material/Typography';
import { Container, Select } from "@mui/material";
import MenuItem from '@mui/material/MenuItem';
import theme from '../../theme';
import { makeStyles } from "@material-ui/core"
const useStyles = makeStyles((theme) => ({
  paper: {
    display: "flex",
    elevation:5,
    borderRadius:20,
    padding: "10px",
    paddingBottom: "20px",
    maxHeight:"100vh",
    width:"100vh",
    flexDirection: "column",
    alignItems: "center",
    verticalAlign: "center",
  },

  form: {
    width: "100%", // Fix IE 11 issue.
    display:'flex',
    flexDirection:'column',
    alignContent:'center'
  },
  submit: {
    height: 40,
    width: "40%",
    
  },
  textField: {
    width: "80vh",
  },
}));

function RegistrationForm(props) {
  const handleSubmit = () => {
    console.log(sslcScheme,registerNumber,yearPass,monthPass,mobileNumber,modeOfApplication);
    props.callback();
  };
  const classes = useStyles();
  var month = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ];
  const [dob, setDob] = useState();//new Date());
  const [sslcScheme, setSslcScheme] = useState("SSLC (2021-2022)");
  const [registerNumber, setRegisterNumber] = useState("");
  const [yearPass, setyearPass] = useState("");
  const [monthPass, setmonthPass] = useState("");
  const [mobileNumber, setMobileNumber] = useState("");
  const [modeOfApplication, setmodeofApplication] = useState("");
  return (
    <div>
      <Container className={classes.paper}>

        <Typography component="h1"  sx={{textAlign:'center',fontSize:30, fontWeight:700,color:'#112c57'}}>
          Candidate Registration
        </Typography>
        <Box component="form" className={classes.form} noValidate onSubmit={handleSubmit} sx={{ mt: 1 }}>
        
          <TextField
            margin="normal"
            select
            required
            className={classes.textField}
            id="ssslcScheme"
            
            label="SSLC Scheme"
            name="sslcScheme"
            autoComplete="sslcScheme"
            value={sslcScheme}
            onChange={(e) => setSslcScheme(e.target.value)}
            autoFocus
          >
            <MenuItem value={"SSLC (2021-2022)"}>SSLC (2021-2022)</MenuItem>
            <MenuItem value={"SSLC (2020-2021)"}>SSLC (2020-2021)</MenuItem>
            <MenuItem value={"SSLC (2019-2020)"}>SSLC (2019-2020)</MenuItem>
            </TextField>
            
          
          <TextField
            margin="normal"
            required
            className={classes.textField}
            id="registerNumber"
            label="Register Number"
            name="registerNumber"
            autoComplete="Register Number"
            value={registerNumber}
            onChange={(e) => setRegisterNumber(e.target.value)}
            autoFocus
          />
          <TextField
            margin="normal"
            required
            className={classes.textField}
            name="mobileNumber"
            label="Mobile Number"
            value={mobileNumber}
            onChange={(e) => setMobileNumber(e.target.value)}
            id="mobileNumber"
            autoComplete="Mobile Number"
          />
          <TextField
            margin="normal"
            required
            className={classes.textField}
            id="dateOFBirth"
            label="Date of birth"
            name="dateOfBirth"
            value={dob}
            onChange={(e) => setDob(e.target.value)}
            autoComplete="Date of Birth"
            autoFocus
          />
          <TextField
            margin="normal"
            required
            className={classes.textField}
            name="yearOfPass"
            label="Year of pass"
            value={yearPass}
            onChange={(e) => setyearPass(e.target.value)}
            id="yearOfPass"
            autoComplete="Select Year of pass"
          />
          <TextField
            margin="normal"
            select
            required
            className={classes.textField}
            id="monthPass"
            label="Month of Pass"
            name="monthPass"
            autoComplete="Select Month"
            value={monthPass}
            onChange={(e) => setmonthPass(e.target.value)}
            autoFocus
          >
            {month.map((option) => (
            <MenuItem key={option} value={option}>
              {option}
            </MenuItem>
          ))}
          </TextField>
          <TextField
            margin="normal"
            select
            required
            className={classes.textField}
            id="modeOfApplication"
            label="Mode of Application"
            name="modeOfApplication"
            autoComplete="Select Mode of Application"
            value={modeOfApplication}
            onChange={(e) => setmodeofApplication(e.target.value)}
            autoFocus
          >
            <MenuItem value={'online'}>Online</MenuItem>
            <MenuItem value={'offline'}>Offline</MenuItem>
          </TextField>
          
        
          <Box sx={{textAlign:'right',pr:2,mt:2}}>
          <Button
            type="submit"
            className={classes.submit}
            variant="contained"
            
          >
            Next
          </Button></Box></Box>
          


              </Container>

    </div>
  )
}

export default RegistrationForm