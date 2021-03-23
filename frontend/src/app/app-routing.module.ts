import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { FormComponent } from './components/form/form.component'

const routes: Routes = [
  {
    path: '',
    redirectTo: '/compra',
    pathMatch: 'full'
  },
  {
    path: 'compra',
    component: FormComponent
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})

export class AppRoutingModule { }
