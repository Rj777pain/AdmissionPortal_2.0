import * as React from 'react';
import Button from '@mui/material/Button';
import CssBaseline from '@mui/material/CssBaseline';
import TextField from '@mui/material/TextField';
import FormControlLabel from '@mui/material/FormControlLabel';
import Checkbox from '@mui/material/Checkbox';
import Axios from "axios";

import Paper from '@mui/material/Paper';
import Box from '@mui/material/Box';
import Grid from '@mui/material/Grid';
import Typography from '@mui/material/Typography';
import { createTheme, ThemeProvider } from '@mui/material/styles';
import HomeLeft from '../homeLeft/HomeLeft';
import { useState } from 'react';
import theme from '../../theme';
import Dialog from "@material-ui/core/Dialog";
import RegistrationDialogueBox from '../registrationDialogueBox.jsx/RegistrationDialogueBox';
import { Link as Rlink, useNavigate } from 'react-router-dom';
import { Link } from '@mui/material';




export default function HomeCenter() {
    const [email, setEmail] = useState("");
    const [password, setPassword] = useState("");
    const navigate = useNavigate();
    const handleSubmit = (event) => {
        //  Axios.post("http://localhost:3001/login", {
        //    email: email,
        //    password: password,
        //  }).then((response) => {
        //    console.log(response);
        //  });
        event.preventDefault();
        const data = new FormData(event.currentTarget);
        console.log({
            email: data.get('email'),
            password: data.get('password'),
        });
        navigate('/profile')
    };
    
    const [open, setOpen] = useState(false);
  
    const handleClickToOpen = () => {
        setOpen(true);
    };
    
    const handleToClose = () => {
        console.log("closing");
        setOpen(false);
    };
    return (
        <ThemeProvider theme={theme}>
            <Grid container component="main" sx={{ height: '100vh' }}>
                <CssBaseline />
                <Grid
                    item
                    xs={false}
                    sm={4}
                    md={8}
                    sx={{
                        backgroundColor: 'background.secondary',
                    }}
                >
                    <HomeLeft />
                </Grid>
                <Grid item xs={12} sm={8} md={4} component={Paper} elevation={6} square>
                    <Box
                        sx={{
                            my: 8,
                            mx: 4,
                            display: 'flex',
                            flexDirection: 'column',
                            alignItems: 'center',
                        }}
                    >

                        <Typography component="h1" variant="h5">
                            Sign in
                        </Typography>
                        <Box component="form" noValidate onSubmit={handleSubmit} sx={{ mt: 1 }}>
                            <TextField
                                margin="normal"
                                required
                                fullWidth
                                id="email"
                                label="Email Address"
                                value={email}
                                onChange={(e)=>setEmail(e)}
                                name="email"
                                autoComplete="email"
                                autoFocus
                            />
                            <TextField
                                margin="normal"
                                required
                                fullWidth
                                name="password"
                                label="Password"
                                type="password"
                                id="password"
                                value={password}
                                onChange={(e)=>setPassword(e)}
                                autoComplete="current-password"
                            />
                            <FormControlLabel
                                control={<Checkbox value="remember" color="primary" />}
                                label="Remember me"
                            />
                            <Button
                                type="submit"
                                fullWidth
                                variant="contained"
                                sx={{ mt: 3, mb: 2 }}
                            >
                                Sign In
                            </Button>
                            <Grid container paddingX={3}>
                                <Grid item xs>
                                    <Link to="/admin/school" variant="body2" fontSize={15}>
                                        Forgot password?
                                    </Link>
                                </Grid>
                                <Grid item>
                                    <Link href="#" onClick={handleClickToOpen} variant="body2" fontSize={15}>
                                        {"Sign Up"}
                                    </Link>
                                </Grid>
                            </Grid>


                        </Box>
                    </Box>
                </Grid>
            </Grid>
            <Dialog open={open} onClose={handleToClose} fullwidth maxWidth='md'>
                <Box>
                <RegistrationDialogueBox callback={handleToClose}/>
                </Box>
            </Dialog>
        </ThemeProvider>
    );
}