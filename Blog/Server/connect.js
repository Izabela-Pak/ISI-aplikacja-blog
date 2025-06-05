const { Pool } = require('pg');

// Łączenie z bazą danych PostgreSQL
const pool = new Pool({
    host: process.env.DB_HOST,
    port: process.env.DB_PORT,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
});

// Sprawdzenie połączenia
pool.connect((error, client, release) => {
    if (error) {
        return console.error('Błąd połączenia z bazą:', error.message);
    }
    console.log('Połączono z bazą');
    release(); 
});

// Wyeksportowanie połączenia
module.exports = pool;