const mysql = require('mysql2');

const pool = mysql.createPool({
    host: 'mysql',
    user: 'root',
    password: 'root',
    database: 'mpdb',
    port: 3308
});

module.exports = pool.promise();
