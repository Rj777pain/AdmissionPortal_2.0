import React from 'react'
import Button from '@mui/material/Button';
function RegistrationForm(props) {
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
    form
</Button></div>
  )
}

export default RegistrationForm