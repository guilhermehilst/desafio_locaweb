import { Component, OnInit } from '@angular/core';
import { Http } from '@angular/http';

@Component({
  selector: 'app-most-relevants',
  templateUrl: './most-relevants.component.html',
  styleUrls: ['./most-relevants.component.css']
})
export class MostRelevantsComponent implements OnInit {

  tweets;
 
  constructor(private http: Http) {
    http.get('http://localhost:3000/most_relevants')
        .subscribe(res => this.tweets = res.json());
  }

  ngOnInit() {
  }

}
