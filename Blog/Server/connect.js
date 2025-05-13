const mysql = require('mysql');

//Łączenie z bazą danych
let link = mysql.createConnection({
    host: process.env.DB_HOST,
    port: process.env.DB_PORT,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
})

link.connect((error) =>{
    if(error) return console.error(error.message);
    console.log("Połączono z bazą")
})

//Wyeksportowanie tego połączenia potrzebne do działania appExpress.js
module.exports = link;