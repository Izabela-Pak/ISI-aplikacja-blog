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

app.post('/insert', async (req, res) => {
  const { imie, kategoria, tytul, tresc } = req.body;

  try {
    // Parametryzowane zapytanie - BEZPIECZNE
    const userResult = await link.query(
      `SELECT id FROM uzytkownik WHERE imie = '${imie}'`
    );
    if (userResult.rows.length === 0) {
      return res.status(400).json({ error: 'Nie znaleziono użytkownika.' });
    }
    const uzytkownik_id = userResult.rows[0].id;

    const catResult = await link.query(
      `SELECT id FROM kategorie WHERE nazwa = '${kategoria}'`
    );
    if (catResult.rows.length === 0) {
      return res.status(400).json({ error: 'Nie znaleziono kategorii.' });
    }
    const kategoria_id = catResult.rows[0].id;

    await link.query(
      `INSERT INTO ogloszenie (uzytkownik_id, kategoria, tytul, tresc) VALUES (${uzytkownik_id}, ${kategoria_id}, '${tytul}', '${tresc}')`
    );

    res.json({ message: 'Dodano ogłoszenie.' });
  } catch (error) {
    console.error('Błąd INSERT:', error);
    res.status(422).json({ error: error.message });
  }
});


//Server - nasłuchiwanie na porcie
app.listen(port, () => {
    console.log(`serwer słucha na porcie ${port}`);
});