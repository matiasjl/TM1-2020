
// grillas y mas grillas

int c = 10;  //cantidad de celdas
int t;       //tamaño de las celdas

void setup() {
  size( 600, 600 );
  textAlign( CENTER, CENTER );
  
  t = width / c;
  
  surface.setLocation(800,-800);
}

void draw() {

  for ( int x = 0; x < c; x ++ ) {
    for ( int y = 0; y < c; y ++ ) {
      
      //diagonales con los indices
      if( x==y || (x+y)==9 )
        fill( 0 );
      else
        fill( 255 );
      //dibujo mi grilla
      rect( x*t, y*t, t, t );
      //visualizo mis indices :)
      fill( 0 );
      text( "x="+x + "\ny=" + y, x*t+t/2, y*t+t/2 );
    }
  }
}
