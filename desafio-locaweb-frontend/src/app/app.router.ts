import { ModuleWithProviders } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { AppComponent } from './app.component';
import { MostRelevantsComponent } from './most-relevants/most-relevants.component';
import { MostMentionsComponent } from './most-mentions/most-mentions.component';

export const router: Routes = [
  { path: '', redirectTo: 'most_relevants', pathMatch: 'full'},
  { path: 'most_relevants', component: MostRelevantsComponent },
  { path: 'most_mentions', component: MostMentionsComponent }
];

export const routes: ModuleWithProviders =  RouterModule.forRoot(router);