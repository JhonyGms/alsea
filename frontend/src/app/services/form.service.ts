import { Injectable } from '@angular/core';
import { HttpClient } from "@angular/common/http";

@Injectable({
  providedIn: 'root'
})

export class FormService {

  private URL = 'http://localhost:3000/api' 

   constructor( 
    private http: HttpClient
    ) { }

  AlmacenarDatos(user) {
    return this.http.post<any>(this.URL + '/registro' , user);
  }
  
  listDatos() {
    return this.http.get<any>(this.URL + '/datos');
  }
}
