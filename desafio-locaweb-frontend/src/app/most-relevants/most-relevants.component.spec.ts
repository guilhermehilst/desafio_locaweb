/* tslint:disable:no-unused-variable */
import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { By } from '@angular/platform-browser';
import { DebugElement } from '@angular/core';

import { MostRelevantsComponent } from './most-relevants.component';

describe('MostRelevantsComponent', () => {
  let component: MostRelevantsComponent;
  let fixture: ComponentFixture<MostRelevantsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ MostRelevantsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(MostRelevantsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
