
// FOR + ellipses = filas

int cant = 10;
int tam;

void setup(){
  size( 600, 200 );
  surface.setLocation(600,-800);
  
  tam = width / cant ;  //60
}

void draw(){
  background( 100 );
  
  for( int i = 0 ; i < cant ; i++ ){
    //dibujo 10 ellipses en una fila
    //*tam = hace el distanciamiento entre las unidades
    //+tam/2 = hace el corrimiento del grupo en eje x
    ellipse( i*tam+tam/2, height/2, tam, tam );
  }
  
  
}
