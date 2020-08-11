
// 2a. armar un array de 100 posiciones, con valores aleatorios de color (0-255) --> int grises o color rgb
// 2b. aplicarlos a una figura que vaya cambiando el color (recorriendo el arreglo).

// Solana

color[] paleta = {color(random(255), 0, 0), color(0, random(255), 0), color(0, 0, random(255))};
int cant = 3;
float tam = 900/3;

void setup() {
  size(900, 300);
  noStroke();
}
void draw() {
  for (int i = 0; i < cant; i++) {
    fill(paleta[i]);
    rect(i * tam, 0, tam, tam);  //buena solucion alternativa!!!
  }
}
