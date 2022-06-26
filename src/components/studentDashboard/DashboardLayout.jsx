import * as React from 'react';
import CssBaseline from '@mui/material/CssBaseline';

import Paper from '@mui/material/Paper';

import Grid from '@mui/material/Grid';

import { createTheme, ThemeProvider } from '@mui/material/styles';


import theme from '../theme';
import DashboardSidebar from './DashboardSidebar';
import AppBar from '../appBar/AppBar'







export default function DashboardLayout(props) {
    
    return (
        <ThemeProvider theme={theme}>
            <AppBar></AppBar>
            <Grid container component="main" sx={{ height: '100vh' }}>
                <CssBaseline />
                <Grid
                    item
                    
                    md={2}
                    
                >
                    <DashboardSidebar />
                </Grid>
                <Grid item md={10} component={Paper} elevation={5} sx={{backgroundColor:'#e6e6e6'}} square>
                    {props.children}
                </Grid>
            </Grid>
            
        </ThemeProvider>
    );
}