
// EJERCICIO EN CLASE - Parte 1
// a. Armar una grilla de 5 filas y 5 columnas (con for anidado).
// b. Cada celda debe mostrar el número 0 (con la función text).

int cant = 5;
int tam;

void setup() {
  size( 500, 500 );
  textSize( 24 );
  textAlign( CENTER, CENTER );
  tam = width / cant;
}

void draw() {
  for ( int i = 0; i < cant; i++ ) {
    for ( int j = 0; j < cant; j++ ) {
      fill( 255 );
      rect( i * tam, j * tam, tam, tam );
      fill( 0 );
      text( "0", i*tam+tam/2, j*tam+tam/2 );
    }
  }
}
