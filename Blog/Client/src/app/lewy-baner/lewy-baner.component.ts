import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import axios from "axios"

@Component({
  selector: 'app-lewy-baner',
  imports: [CommonModule],
  templateUrl: './lewy-baner.component.html',
  styleUrls: ['./lewy-baner.component.css'] 
})
export class LewyBanerComponent {

  pobrane_dane: any = [];

  DaneAxios = async () => {
    //Tworzenie klienta axios - zawsze musi być
    let client = axios.create({
      baseURL: "https://isi-aplikacja-blog.onrender.com"
    });

    try{
      const response = await client.get("/select?sql=SELECT nazwa FROM kategorie");
      this.pobrane_dane = response.data
    }catch(error){
      console.log(error);
    }
  }

  ngOnInit():void{
    this.DaneAxios();
  }
  
}