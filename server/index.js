const express = require("express");
const app = express();
const mysql = require("mysql");
const cors = require("cors");

app.use(cors());
app.use(express.json());

const db = mysql.createConnection({
  user: "root",
  host: "localhost",
  password: "password",
  database: "admissionPortal",
});
 //end of app.post()http://localhost:3000/
app.post("/login", (req, res) => {
  console.log(req.body);  
  const email = req.body.email;
  const password = req.body.password;
  console.log(email);
  console.log(password);
  db.query("SELECT email from login WHERE email = ?  and password = ?",[email, password],
  // db.query("INSERT INTO login (email, password) VALUES (?, ?)", [email, password],
  (err, result) => {
    console.log(result);
    if(err) {
      console.log("password incorrect");
      res.redirect("/details");
    } else {
      console.log("password correct");
      res.redirect("/profile");
      console.log("hah");
    }
  });
});
 
// if (loggedIn) {
//   console.log("Success!");
//   res.redirect("/UserHomePage");
// } else {
//   console.log("Error!");
// }

// app.post("/auth", function (req, res) {
//   let email = req.body.email;
//   let password = req.body.password;
//   if (email && password) {
//     connection.query(
//       "SELECT * FROM accounts WHERE email = ? AND password = ?",
//       [email, password],
//       function (error, results, fields) {
//         if (error) throw error;
//         if (results.length > 0) {
//           req.session.loggedin = true;
//           req.session.email = email;
//           res.redirect("/home");
//         } else {
//           res.send("Incorrect email and/or Password!");
//         }
//         res.end();
//       }
//     );
//   } else {
//     res.send("Please enter email and Password!");
//     res.end();
//   }
// });

app.listen(3001, () => {
  console.log("Yey, your server is running");
});
