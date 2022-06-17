import React from 'react'
import Button from '@mui/material/Button';
function RegistrationPassword(props) {
    const handleCallback = () => {
      
      console.log('sss');
  
      props.callback();
    };
    return (
      <div><Button
      onClick={handleCallback}
      fullWidth
      variant="contained"
      sx={{ mt: 3, mb: 2 }}
  >
      password
  </Button></div>
    )
  }

export default RegistrationPassword