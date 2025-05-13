import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PrawyBanerComponent } from './prawy-baner.component';

describe('PrawyBanerComponent', () => {
  let component: PrawyBanerComponent;
  let fixture: ComponentFixture<PrawyBanerComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [PrawyBanerComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(PrawyBanerComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
