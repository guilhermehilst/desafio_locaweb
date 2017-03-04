/* tslint:disable:no-unused-variable */
import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { By } from '@angular/platform-browser';
import { DebugElement } from '@angular/core';

import { MostMentionsComponent } from './most-mentions.component';

describe('MostMentionsComponent', () => {
  let component: MostMentionsComponent;
  let fixture: ComponentFixture<MostMentionsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ MostMentionsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(MostMentionsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
