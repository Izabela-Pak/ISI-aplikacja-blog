import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SrodkowyBanerComponent } from './srodkowy-baner.component';

describe('SrodkowyBanerComponent', () => {
  let component: SrodkowyBanerComponent;
  let fixture: ComponentFixture<SrodkowyBanerComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [SrodkowyBanerComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(SrodkowyBanerComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
