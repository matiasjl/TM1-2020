//Mariano Quattrocchi 
//Juego de lineas y posición del mouse
int var = 10;
int tam;

void setup() {
  size(400, 400);
  tam = width / var;
}

void draw() {
  background(255);
  for ( int i = 0; i < var; i++ ) {
    line(i*tam, 0, mouseX, mouseY);
    line(height, i*tam, mouseX, mouseY);
    line(0, i*tam, mouseX, mouseY);
    line(i*tam, height, mouseX, mouseY);
    float x = dist( 0, 400, mouseX, mouseY );
    float m = map(x, 0, 400, 0, 10);
    strokeWeight(m);
  }
}
