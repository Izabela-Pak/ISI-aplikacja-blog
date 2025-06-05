const express = require('express');
const app = express();
const port = process.env.PORT || 4004;

app.use(express.json());
const bodyParser = require('body-parser');
const cors = require('cors');

//Baza danych
const link = require('./connect')

// Content-type: application/json
app.use(bodyParser.json());

// fix cors
app.use(cors());

//Odebranie Get z parametrami (selectem)
app.get('/select', (req, res) =>{
    const sql = req.query.sql;
    link.query(sql)
    .then(result => res.json(result.rows))
    .catch(error => res.status(422).json({error: error.message}));
});

app.post('/insert', (req, res) =>{
    const sql = req.body.sql;
    link.query(sql)
    .then(result => res.json(result.rows))
    .catch(error => res.status(422).json({error: error.message}));
})

//Server - nasłuchiwanie na porcie
app.listen(port, () => {
    console.log(`serwer słucha na porcie ${port}`);
});