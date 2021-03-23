import { Injectable } from '@angular/core';
import { HttpClient } from "@angular/common/http";
import { Router } from "@angular/router";

@Injectable({
  providedIn: 'root'
})

export class FormService {

  private URL = 'http://localhost:3000/api' 

   constructor( 
    private http: HttpClient,
    private router: Router) { }

  AlmacenarDatos(user) {
    //return this.http.post<any>(this.URL + '/registro' , user);
  }
}
