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
    height:"80vh",
    flexDirection: "column",
    alignItems: "center",
    verticalAlign: "center",
  },

  form: {
    width: "100%", // Fix IE 11 issue.
    marginTop: theme.spacing(1),
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
  const [startDate, setStartDate] = useState();//new Date());
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
        <Box component="form" noValidate onSubmit={handleSubmit} sx={{ mt: 1 }}>
        
          {/* <Select
            margin="normal"
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
            </Select><br/> */}
          <TextField
            margin="normal"
            required
            className={classes.textField}
            name="password"
            label="SSLC Scheme"
            type="password"
            id="password"
            autoComplete="current-password"
          /><br/>
          <TextField
            margin="normal"
            required
            className={classes.textField}
            id="email"
            label="Register Number"
            name="email"
            autoComplete="email"
            autoFocus
          /><br/>
          <TextField
            margin="normal"
            required
            className={classes.textField}
            name="password"
            label="Mobile Number"
            type="password"
            id="password"
            autoComplete="current-password"
          /><br/>
          <TextField
            margin="normal"
            required
            className={classes.textField}
            id="email"
            label="Date of birth"
            name="email"
            autoComplete="email"
            autoFocus
          /><br/>
          <TextField
            margin="normal"
            required
            className={classes.textField}
            name="password"
            label="Year of pass"
            type="password"
            id="password"
            autoComplete="current-password"
          /><br/>
          <TextField
            margin="normal"
            required
            className={classes.textField}
            id="email"
            label="Mode of Application"
            name="email"
            autoComplete="email"
            autoFocus
          /><br/>
        
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