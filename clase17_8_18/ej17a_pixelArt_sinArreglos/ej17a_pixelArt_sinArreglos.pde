
int cant = 8;
int tam;

void setup(){
  size( 500, 500 );
  tam = width / cant;
}

void draw(){

  for( int x = 0 ; x < cant ; x++ ){
    for( int y = 0 ; y < cant ; y++ ){
      //si el mouse está en la celda, pintar negro
      if( mouseX > x*tam && mouseX < x*tam+tam && mouseY > y*tam && mouseY < y*tam+tam ){
        fill( 0 );
      }else{
        fill( 255 );
      }
      rect( x*tam, y*tam, tam, tam );
    }
  }
}
