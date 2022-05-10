const express = require("express");
var cors = require('cors');
var bodyParser = require('body-parser');
const mysql = require("mysql");
const app = express();
app.use(cors())

// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }))
// parse application/json
app.use(bodyParser.json())

const connection = mysql.createPool({
  connectionLimit: 10,
  host: process.env.MYSQL_HOST || "localhost",
  port: process.env.MYSQL_PORT || 33061,
  user: process.env.MYSQL_USER || "root",
  password: process.env.MYSQL_PASSWORD || "password",
  database: process.env.MYSQL_DATABASE || "test",
});

app.post("/check", (req, res) => {
  console.log(req.body)
  connection.query("SELECT * FROM test.User u WHERE u.id_no=? AND u.phone_number=?;",[req.body.id_no, req.body.phone_number],  (err, rows) => {
    if (err) {
      res.json({
        success: false,
        err,
      });
    } else {
      if(rows && rows.length > 0){
        res.json({
          success: true,
          data: rows[0],
        });
      }
      else{
        res.json({
          success: true,
          data: null,
        });
      }
    }
  });
});

app.listen(5000, () => console.log("listining on port 5000"));