import { Component, OnInit } from '@angular/core';
import { Http } from '@angular/http';

@Component({
  selector: 'app-most-mentions',
  templateUrl: './most-mentions.component.html',
  styleUrls: ['./most-mentions.component.css']
})
export class MostMentionsComponent implements OnInit {

  users;
 
  constructor(private http: Http) {
    http.get('http://localhost:3000/most_mentions')
        .subscribe(res => this.users = res.json());
  }

  ngOnInit() {
  }

}
