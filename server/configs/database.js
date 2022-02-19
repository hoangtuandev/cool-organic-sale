const mysql = require('mysql')

const db = mysql.createConnection({
    user: "root",
    host: "localhost",
    password: "",
    database: "cool-organic-db"
});

module.exports = db;