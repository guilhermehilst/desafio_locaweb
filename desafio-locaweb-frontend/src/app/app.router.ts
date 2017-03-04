import { ModuleWithProviders } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { AppComponent } from './app.component';
import { MostRelevantsComponent } from './most-relevants/most-relevants.component';

export const router: Routes = [
  { path: '', redirectTo: 'most_relevants', pathMatch: 'full'},
  { path: 'most_relevants', component: MostRelevantsComponent }
];

export const routes: ModuleWithProviders =  RouterModule.forRoot(router);