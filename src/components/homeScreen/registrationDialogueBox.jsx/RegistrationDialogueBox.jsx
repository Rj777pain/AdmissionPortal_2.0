import React,{useState} from 'react'
import theme from '../../theme'
import Box from "@material-ui/core/Box";
import Paper from "@material-ui/core/Paper";
import { makeStyles } from "@material-ui/styles";
import RegistrationForm from './RegistrationForm';
import RegistrationSuccess from './RegistrationSuccess';
import RegistrationPassword from './RegistrationPassword';
// import HomeLeft from '../homeLeft/HomeLeft';
const useStyles = makeStyles((theme) => ({
    paper: {
      display: "flex",
      margin: "5px",
      height: "100%",
      width: "100vh",
      flexDirection: "column",
      alignItems: "center",
    },

   
  }));

function RegistrationDialogueBox(props) {
    const classes = useStyles();
    const [form, setForm] = useState(true)
    const [password, setPassword] = useState(false)
    const [success, setSuccess] = useState(false)
    const handleCallback = () => {        
      props.callback();
    };
    const handleOnFromSubmit = () => {
      setForm(false);
      setPassword(true);
    };
    const handleOnPasswordSubmit = () => {  
      setPassword(false);
      setSuccess(true);
    }
  return (
    <Box className={classes.paper}>
        {form && <RegistrationForm callback={handleOnFromSubmit} />}
        {password && <RegistrationPassword callback={handleOnPasswordSubmit} />}
        {success && <RegistrationSuccess callback={handleCallback} />}

    </Box>
  )
}

export default RegistrationDialogueBox