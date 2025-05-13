import { ComponentFixture, TestBed } from '@angular/core/testing';

import { LewyBanerComponent } from './lewy-baner.component';

describe('LewyBanerComponent', () => {
  let component: LewyBanerComponent;
  let fixture: ComponentFixture<LewyBanerComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [LewyBanerComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(LewyBanerComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
