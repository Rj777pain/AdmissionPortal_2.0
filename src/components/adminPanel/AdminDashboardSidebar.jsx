import { Toolbar,Divider,List,ListItem,ListItemButton,ListItemText, makeStyles,} from '@mui/material'
import Box from '@mui/material/Box';
import React from 'react'
import Paper from '@mui/material/Paper';
import theme from '../theme';
import NavItem from './NavItem';


function AdminDashboardSidebar() {
  
  return (
    <Paper  sx={{backgroundColor:'white',display: 'flex',
    flexDirection: 'column',height: '100vh',paddingX:'10px', elevation:'10'}}>
      
    <Box sx={{height:'30px'}}/>
    
    
      <NavItem name="School Details" href="/admin/school"/>
      <Divider/>
      <NavItem name="Student Applications" href="/admin/application"/>
      <Divider/>
      
      <NavItem name="Sign Out" href="/"/>
      <Divider/>
      
      
    </Paper>
    
  )
}

export default AdminDashboardSidebar