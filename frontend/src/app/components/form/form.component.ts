import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators, FormArray } from '@angular/forms';
import { FormService } from '../../services/form.service'

@Component({
  selector: 'app-form',
  templateUrl: './form.component.html',
  styleUrls: ['./form.component.css']
})
export class FormComponent implements OnInit {

  listUser = [

  ]

  constructor(
    public formBuilder: FormBuilder,
    public FormServices: FormService
  ) { }

  registerForm = this.formBuilder.group({
    Vendedor: ['', Validators.required],
    NombreComprador: ['',Validators.required],
    DocumentoComprador: ['', Validators.required],
    TelefonoComprador: ['',Validators.required],
    CorreoComprador: ['', Validators.required],
    Direccionuno: ['', [Validators.required]],
    Direcciondos: [''],
    Direccionadicional: [''],
    Pais: ['', [Validators.required]],
    Autorizado: ['', [Validators.required]],
    Observaciones: ['']

    })


    submit() {

      if (!this.registerForm.valid) {
        alert('Alguna regla de validación no se está cumpliendo');
        return;
      }
      this.FormServices.AlmacenarDatos(this.registerForm.value)
      .subscribe( res => {
        console.log(res)
        this.datosTabla()
      },err => {
        console.log(err)
      })
    
    }

    datosTabla(){
      this.FormServices.listDatos()
      .subscribe( 
        res => {
          this.listUser = res ;
          console.log(res)
        },   
        err => console.log(err)
      ) 
    }

  ngOnInit(): void {

    this.datosTabla()
  }

}
