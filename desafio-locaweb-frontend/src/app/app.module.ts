import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';
import { routes } from './app.router'
import { AppComponent } from './app.component';
import { MostRelevantsComponent } from './most-relevants/most-relevants.component';

@NgModule({
  declarations: [
    AppComponent,
    MostRelevantsComponent
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpModule,
    routes
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
