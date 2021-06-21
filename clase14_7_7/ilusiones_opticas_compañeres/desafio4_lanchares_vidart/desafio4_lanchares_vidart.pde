//Solana Lanchares Vidart
//es un cuadro de un artista, pero va con la idea de for()

int tam = 20;
int tam2 = 850;

void setup() { 
  size(900, 900);
  background(2, 48, 68);
  int cant = width/tam;

  for (int i = 1; i < cant -1; i++) {
    for (int j = 1; j < cant -1; j++) {
      if ((i+j)%2 == 0) {
        fill(3, 42, 7);
      } else {
        fill(2, 48, 68);
      }
      noStroke();
      rect(i * tam, j * tam, tam, tam);
    }
  } 

  for (int tam2 = 820; tam2 >= 200; tam2 = tam2 - (tam*2)) {
    rectMode(CENTER);
    fill(232, 216, 58, 23);
    rect(width/2, height/2, tam2, tam2);
  }
} 

void draw() {
  if (keyPressed) {
    saveFrame("###.png");
  }
}
