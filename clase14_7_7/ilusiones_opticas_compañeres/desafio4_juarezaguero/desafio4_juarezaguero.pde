//Marcos Emmanuel Juarez Agüero 
//Puntos negros (efecto optico sobre grilla)

void setup()
{
  size(600, 600);
}

void draw()
{ 
  background(0);

  //Grila de cuadros + contornos grises
  for (int i = 0; i < 12; i++) {
    for (int j = 0; j < 12; j++) {
      fill(0);
      strokeWeight(5);
      stroke(175);
      rect(i*50, j*50, 50, 50);
    }
  }

  //Grilla de circulos 
  for (int i = 0; i < 12; i++) {
    for (int j = 0; j < 12; j++) {
      fill(255);
      noStroke();
      ellipse(i*50, j*50, 10, 10);
    }
  }
}
