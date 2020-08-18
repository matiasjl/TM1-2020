
int cant = 8;
int tam;

//DECLAR UN ARREGLO BIDIMENSIONAL
boolean[][] pintado = new boolean[cant][cant];

void setup() {
  size( 500, 500 );
  tam = width / cant;

  //ASIGNAR VALORES AL ARREGLO
  for ( int x = 0; x < cant; x++ ) {
    for ( int y = 0; y < cant; y++ ) {
      pintado[x][y] = false;
    }
  }
  //asignar manualmente
  pintado[0][0] = true;
  pintado[4][5] = true;
  pintado[3][7] = true;
}

void draw() {

  for ( int x = 0; x < cant; x++ ) {
    for ( int y = 0; y < cant; y++ ) {
      //si el valor de la posición correspondiente en el arreglo es true, pinte de negro
      if ( pintado[x][y] /*== true*/ ) {
        fill( 0 );
      } else {
        fill( 255 );
      }
      rect( x*tam, y*tam, tam, tam );
    }
  }
}

void mousePressed() {
  //si el mouse está en la celda, CAMBIE EL VALOR DEL ARREGLO
  for ( int x = 0; x < cant; x++ ) {
    for ( int y = 0; y < cant; y++ ) {
      if( mouseX > x*tam && mouseX < x*tam+tam && mouseY > y*tam && mouseY < y*tam+tam ){
        pintado[x][y] = !pintado[x][y];
      }
    }
  }
}

void keyPressed(){
  if( key == ' ' )
    saveFrame();
}
