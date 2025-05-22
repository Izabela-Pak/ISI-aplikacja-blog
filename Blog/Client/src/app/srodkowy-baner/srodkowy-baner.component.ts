import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import axios from "axios"


@Component({
  selector: 'app-srodkowy-baner',
  imports: [CommonModule, FormsModule],
  templateUrl: './srodkowy-baner.component.html',
  styleUrl: './srodkowy-baner.component.css'
})
export class SrodkowyBanerComponent {
  checkboxy ={
  ksiazki: false,
  muzyka: false,
  filmy: false
  };

  CoWyswietlic(kategoria: number): boolean {
    return (
      (this.checkboxy.ksiazki && kategoria === 1) ||
      (this.checkboxy.muzyka && kategoria === 2) ||
      (this.checkboxy.filmy && kategoria === 3)
      
    );
  }

  pobrane_dane: any = [];

  DaneAxios = async () => {
    //Tworzenie klienta axios - zawsze musi być
    let client = axios.create({
      baseURL: "https://isi-aplikacja-blog.onrender.com"
    });

    try{
      const response = await client.get("/select?sql=SELECT ogloszenie.id, kategoria, tytul, tresc, telefon, nazwa FROM `ogloszenie` JOIN uzytkownik ON uzytkownik.id=ogloszenie.uzytkownik_id JOIN kategorie ON kategorie.id = ogloszenie.kategoria;");
      this.pobrane_dane = response.data
    }catch(error){
      console.log(error);
    }
  }

  ngOnInit():void{
    this.DaneAxios();
  }

}
