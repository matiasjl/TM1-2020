
// FOR + line = degradez

void setup(){
  size( 600, 400 );
  surface.setLocation(600,-800);
}

void draw(){
  background( 255 );
  
  //iniciador: variable que funciona de índice
  //condición: booleana, al igual que if, "hasta cuando" se repetira
  //actualización: modificación del iniciador
  for( int i = 0 ; i < width ; i++ ){
    //acciones
    float c = map( i, 0, width-1, 255, 0 );  //de blanco a negro
    stroke( c );
    line( i, 0, i, height);
  }
  
  
}
