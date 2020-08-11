
// 2a. armar un array de 100 posiciones, con valores aleatorios de color (0-255) --> int grises o color rgb
// 2b. aplicarlos a una figura que vaya cambiando el color (recorriendo el arreglo).

// Isabella

int[]colores;

void setup() {
  size(400, 400);
  colores=new int[100];
  rectMode(CENTER);

  for (int i=0; i<100; i++) {
    colores[i] = int(random(0, 255));
  }
}

void draw() {
  for (int i=0; i<100; i++) {
    //colores[i] = int(random(0, 255));  //va en setup
    fill(colores[i]);
    rect(width/2, height/2, 200, 200);
    println(colores[i]);
  }
  
  // for no es la manera de resolver este ejercicio
  // así solo veríamos el último color
}
