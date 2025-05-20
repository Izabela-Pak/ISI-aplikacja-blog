import { Component } from '@angular/core';
import { LewyBanerComponent } from "./lewy-baner/lewy-baner.component";
import { SrodkowyBanerComponent } from "./srodkowy-baner/srodkowy-baner.component";
import { PrawyBanerComponent } from "./prawy-baner/prawy-baner.component";

@Component({
  selector: 'app-root',
  imports: [LewyBanerComponent, SrodkowyBanerComponent, PrawyBanerComponent],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = 'zad';
}
