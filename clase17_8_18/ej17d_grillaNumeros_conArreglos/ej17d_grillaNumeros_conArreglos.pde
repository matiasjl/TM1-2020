
// EJERCICIO EN CLASE - Parte 2
// c. Al hacer click en cada celda, la misma debe incrementar ese número en 1 (arreglos).
// --- el arreglo tiene que ser bidimensional y corresponder a ese dato numérico;

int cant = 5;
int tam;

// CREAR ARREGLO
int[][] celda = new int[cant][cant];

void setup() {
  size( 500, 500 );
  textSize( 24 );
  textAlign( CENTER, CENTER );
  tam = width / cant;

  for ( int i = 0; i < cant; i++ ) {
    for ( int j = 0; j < cant; j++ ) {
      celda[i][j] = 0;
    }
  }
}

void draw() {
  for ( int i = 0; i < cant; i++ ) {
    for ( int j = 0; j < cant; j++ ) {
      fill( 255 );
      rect( i * tam, j * tam, tam, tam );
      fill( 0 );
      text( celda[i][j], i*tam+tam/2, j*tam+tam/2 );
    }
  }
}

void mousePressed() {
  for ( int i = 0; i < cant; i++ ) {
    for ( int j = 0; j < cant; j++ ) {
      if( mouseX > i*tam && mouseX < i*tam+tam/2 && mouseY > j*tam && mouseY < j*tam+tam/2 )
        celda[i][j]++;
    }
  }
}
