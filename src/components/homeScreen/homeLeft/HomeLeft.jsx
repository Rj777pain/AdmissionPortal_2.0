import React from 'react'
import Paper from '@mui/material/Paper';
import Box from '@mui/material/Box';
import Divider from '@mui/material/Divider';
import List from '@mui/material/List';
import { makeStyles } from "@material-ui/core"
import NotificationsActiveIcon from '@mui/icons-material/NotificationsActive';
import CallRoundedIcon from '@mui/icons-material/CallRounded';
import theme from '../../theme';
const useStyles = makeStyles((theme)=>({
    block_heading: {
        fontSize: '1.2rem',
        color: theme.palette.block_heading,
        fontWeight: 'medium',
    },
}));
function HomeLeft() {
    const classes = useStyles();
    const items = []

    for (let i = 0; i < 10; i++) {
        items.push('Lorem Ipsum is simply dummy text of the printing and typesetting industry.')
    }
    return (
        <Box
            sx={{
                my: 8,
                mx: 5,
                display: 'flex',
                flexDirection: 'column',
                alignItems: 'center',
            }}>
            <Box component={Paper} elevation={2} sx={{
                px: 2,
                py: 2,
                width: '100%',
                borderRadius: 2,
                height: 300,
                backgroundColor: '#fff',
            }}>
                <Box className={classes.block_heading} sx={{ display: 'flex', alignItems: 'center' }}><NotificationsActiveIcon sx={{ mr: 0.5 }} />Notifications</Box>
                <Divider sx={{ my: 1 }} />
                <List sx={{ maxHeight: '80%', overflow: 'auto', pt: 1, pl: 1 }}>
                    {items.map(item => <li>{item}</li>)}
                </List>
            </Box>

            <Box component={Paper} elevation={2} sx={{
                px: 2,
                py: 2,
                marginTop: 6,
                width: '100%',
                borderRadius: 2,
                height: 100,
                backgroundColor: '#fff',
            }}>
                <Box className={classes.block_heading} sx={{ display: 'flex', alignItems: 'center' }}><CallRoundedIcon sx={{ mr: 0.5 }} />Contact</Box>
                <Divider sx={{ my: 1 }} />
                <div>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</div>
            </Box>
        </Box>
    )
}

export default HomeLeft