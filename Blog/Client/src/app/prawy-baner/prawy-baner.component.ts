import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule, NgForm } from '@angular/forms';
import axios from "axios"

@Component({
  selector: 'app-prawy-baner',
  imports: [CommonModule, FormsModule],
  templateUrl: './prawy-baner.component.html',
  styleUrl: './prawy-baner.component.css'
})
export class PrawyBanerComponent {
  select_uzytkownik: any = [];
  select_kategoria: any = [];

  dane_do_wyslania = {
    imie: 'Anna',
    kategoria: 'Książka',
    tytul: '',
    tresc: ''
  }

  SelectAxios = async () => {
    let client = axios.create({
      baseURL: "https://isi-aplikacja-blog.onrender.com"
    });
    try{
      const res1 = await client.get("/select?sql=SELECT imie, id FROM uzytkownik");
      this.select_uzytkownik = res1.data
      const res2 = await client.get("/select?sql=SELECT nazwa,id FROM kategorie");
      this.select_kategoria = res2.data
    }catch(error){
      console.log(error);
    }
  }

  InputAxios = async (form: NgForm) =>{
    //Czy wstawiamy czy pobieramy - tworzymy tak samo klienta
    let client = axios.create({
      baseURL: "https://isi-aplikacja-blog.onrender.com"
    });

    try{
      const imie = this.dane_do_wyslania.imie;
      const kategoria = this.dane_do_wyslania.kategoria;
      const tytul = this.dane_do_wyslania.tytul.replace(/"/g, '\\"');
      const tresc = this.dane_do_wyslania.tresc.replace(/'/g, "''");

      const sql = `
        INSERT INTO ogloszenie(uzytkownik_id, kategoria, tytul, tresc)
        VALUES(
          (SELECT id FROM uzytkownik WHERE imie='${imie}'),
          (SELECT id FROM kategorie WHERE nazwa='${kategoria}'),
          "${tytul}",
          '${tresc}'
        );
      `;
      console.log(sql);
      const naglowek = new Headers();
      naglowek.append('Content-Type', 'application/json');

      const response = await axios.post('https://isi-aplikacja-blog.onrender.com/insert', 
       {sql: sql});

       //Jeśli się udało wstawić dane to czyści formularz
       if (response.status === 200) {
        form.reset();
    }
    
    }catch(error){
      console.log(error);
    }
  
  }

  ngOnInit() {
    this.SelectAxios();
  }
}
