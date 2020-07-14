//Juego de lineas y posición del mouse
int var = 10;
int tam, arcoiris, x, y;
float distancia ;
void setup() {
  size(400, 400);
  tam = width / var;
  colorMode(HSB, 360, 100, 100);
}

void draw() {

  distancia = dist(width/2, height/2, mouseX, mouseY);
  arcoiris = int(distancia); 
  map( arcoiris, 0, 280, 0, 360 );

  background(arcoiris, 100, 100);
  for ( int i = 0; i < var; i++ ) {
    line(i*tam, 0, mouseX, mouseY);
    line(height, i*tam, mouseX, mouseY);
    line(0, i*tam, mouseX, mouseY);
    line(i*tam, height, mouseX, mouseY);
    float x = dist( 0, 400, mouseX, mouseY );
    float m = map(x, 0, 400, 0, 10);
    strokeWeight(m);
    println(distancia);
  }
}
