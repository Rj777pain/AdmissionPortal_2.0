import React from 'react'
import Button from '@mui/material/Button';
function RegistrationSuccess(props) {
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
    success
</Button></div>
  )
}

export default RegistrationSuccess