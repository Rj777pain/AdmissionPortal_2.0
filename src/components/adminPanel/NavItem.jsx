import React from 'react'
import Box from '@mui/material/Box';
import { Link } from 'react-router-dom';
function NavItem(props) {
  return (
    <Link to={props.href} style={{ textDecoration: 'none' }}>
    <Box sx={{
      fontSize: '1.1rem',
      fontWeight: '600',
      paddingLeft: '20px', color: 'black',
      display: "flex" ,
      alignItems: "center",
      justifyContent: "flex-start",
      
      
      height:'60px',
      "&:hover": {
        
        color: 'black',
        backgroundColor: 'rgb(133 142 145)'
      },
    }}>{props.name}</Box></Link>
  )
}

export default NavItem