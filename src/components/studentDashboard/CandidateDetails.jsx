import { Grid,Box,Paper, Divider } from '@mui/material'
import React from 'react'



function CandidateDetails() {
  return (
    <Grid container>
      <Grid item md={6} sx={{display: 'flex',
    flexDirection: 'column',}}>
      
      Personal Details<br/>
      <Divider/>
      Residence Detaisl<br/>
      <Divider/>
      Contact Details<br/>
      <Divider/>
      
      </Grid>
      <Grid item md={6} sx={{display: 'flex',
    flexDirection: 'column',}}>
      Examination Details<br/>
      <Divider/>
      Extra-Curricular Activities<br/>
      <Divider/>
      Other Details
      <Divider/>
      </Grid>
    </Grid>
  )
}

export default CandidateDetails