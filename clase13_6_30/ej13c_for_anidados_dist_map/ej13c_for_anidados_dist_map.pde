
int cant = 10;
int tam;

void setup() {
  size( 600, 600 );
  ellipseMode( CORNER );
  tam = width / cant ;  //60
}

void draw() {
  background( 0 );

  // Armar una grilla de 10x10 cuadrados combinando los ejercicios anteriores
  for ( int i = 0; i < cant; i++ ) {
    for ( int j = 0; j < cant; j++ ) {
        //manejo el color con la distancia al mouse
        float d = dist( i*tam+tam/2, j*tam+tam/2, mouseX, mouseY );
        float m = map( d, 0, 750, 0, 255 );
        fill( m );
      if( (i+j)%2==0 ){  //suma de indices = par
        rect( i*tam, j*tam, tam, tam );
      }else{
        ellipse( i*tam, j*tam, tam, tam );
      }
    }
  }
  //-----------------------------------------------------
}
