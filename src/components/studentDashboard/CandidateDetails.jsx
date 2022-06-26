import { makeStyles } from '@material-ui/core';
import { Grid,Box,Paper, Divider, TextField } from '@mui/material'
import React from 'react'


const useStyles = makeStyles((theme)=>({
  block_heading: {
      fontSize: '1.2rem',
      color: '#05152e',
      fontWeight: '600',
     
  },
  textField: {
    width: "500px",
    
  },
  textField2: {
    width: "100px",
    
  },
}));
function CandidateDetails() {
  const classes = useStyles();
  
  return (
    <Grid container sx={{maxWidth: '100%',display:'flex',
    overflowY: 'auto',}}>
      <Grid item md={12}><Box sx={{textAlign:'center',fontSize:'1.5rem',fontWeight:'600',marginTop:'30px',marginBottom:'20px'}}>Candidate Details</Box></Grid>
      <Grid container md={6} sx={{display: 'flex',
    flexDirection: 'column',paddingLeft:'30px',spacing:'0'}}>
      
      <Box className={classes.block_heading}>
      Personal Details</Box>

      <CustomTextField name="Name"/>
      <CustomTextField name="Age"/>
      <CustomTextField name="Gender"/>
      <CustomTextField name="Caste"/>
      <CustomTextField name="Category"/>
      <CustomTextField name="Religion"/>
      <CustomTextField name="Father Name"/>
      <CustomTextField name="Mother Name"/>
      <CustomTextField name="Guardian Name"/>
      <CustomTextField name="Adhaar Number"/>
      <CustomDivider/>

      <Box className={classes.block_heading}>
      Residence Details</Box> 
      <CustomTextField name="Address Line 1"/>
      <CustomTextField name="Address Line 2"/>
      <CustomTextField name="Street"/>
      <CustomTextField name="Village"/>
      <CustomTextField name="Taluk"/>
      <CustomTextField name="District"/>
      <CustomDivider/>

      <Box className={classes.block_heading}>
      Contact Details</Box>
      <CustomTextField name="Email Address" value="abc@gmail.com"/>
      <CustomTextField name="Mobile Number" value="9876543210"/>
      <CustomDivider/>
      
      </Grid>
      <Grid item md={6} sx={{display: 'flex',
    flexDirection: 'column',px:'1px'}}>

       <Box className={classes.block_heading}>
      Examination Details</Box>
      <CustomTextField name="Qualifying Exam" value="SSLC (2021-2022)"/>
      <CustomTextField name="Register Number" value="987654"/>
      <CustomTextField name="Month Pass" value="March"/>
      <CustomTextField name="Year Pass" value="2022"/>
      <CustomTextField name="Passed in Board Exam" value="Yes"/>
      <CustomTextField name="Chance" value="1"/>
      <CustomDivider/>
      <Box className={classes.block_heading}>
      Extra-Curricular Activities</Box>
      <div>Participation in Sports</div>
      <Box sx={{display:'flex',justifyContent:'space-between',width:'500px'}}>
        <CustomTextField2 name='State Lvl' value='0'/>
        <CustomTextField2 name='Dist 1st' value='0'/>
        <CustomTextField2 name='Dist 2nd' value='0'/>
        <CustomTextField2 name='Dist 3rd' value='0'/>
        
      </Box>

      <div>Participation in Youth Festivals</div>
      <Box sx={{display:'flex',justifyContent:'space-between',width:'500px'}}>
        <CustomTextField2 name='State Lvl' value='0'/>
        <CustomTextField2 name='Dist 1st' value='0'/>
        <CustomTextField2 name='Dist 2nd' value='0'/>
        <CustomTextField2 name='Dist 3rd' value='0'/>
        
      </Box>
      <CustomDivider/>
      <Box className={classes.block_heading}>
      Other Details</Box>
      <CustomTextField name="Minority Language" value="Select"/>
      <CustomTextField name="Differently Abled Type" value="Select"/>
      <CustomTextField name="Percentage of Disability" value="0"/>
      <CustomDivider/>
      </Grid>
    </Grid>
  )
}

function CustomDivider(){
  return <Box width={500} paddingY={1}><Divider/></Box>
}

function CustomTextField(props){
  const classes=useStyles();
  return <TextField
  margin="normal"
  required
  size='small'
  className={classes.textField}
  name="Name"
  value={props.value}
  label={props.name}
  sx={{
    "& label": {
      color:'black'
    }
  }}
  
  id="newPassword"

/>
}

function CustomTextField2(props){
  const classes=useStyles();
  return <TextField
  margin="normal"
  required
  size='small'
  className={classes.textField2}
  name="Name"
  value={props.value}
  label={props.name}
  sx={{
    "& label": {
      color:'black'
    }
  }}
  
  id="newPassword"

/>
}
export default CandidateDetails