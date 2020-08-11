
// 1. armar un array de 10 posiciones con 10 nombres 
// de compañeres e imprimir su contenido en la consola
// o mostrarlo en pantalla con la función text()

// Melisa

String[] nombre;

void setup() {
  size(400, 400);
  nombre = new String[10];
  nombre[0] = "Juana";
  nombre[1] = "Isabella";
  nombre[2] = "Denise";
  nombre[3] = "Mariano";
  nombre[4] = "Santiago";
  nombre[5] = "Luna";
  nombre[6] = "Solana";
  nombre[7] = "Oriana";
  nombre[8] = "Nico";
  nombre[9] = "Clara";
}
void draw() {

  textSize(20);  //mejor en setup
  textAlign(CENTER, TOP);
  for (int n = 0; n<10; n++) {
    text(nombre[n], n+200, n*20);  //podria borrarse el "n+"
  }
}
