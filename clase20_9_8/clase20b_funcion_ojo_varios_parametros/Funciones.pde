
// funcion de dibujo
// ojo con dos parametros
void ojo( float x, float y ){
  pushStyle();  //--------------inicio de estilo (propiedades de dibujo) reset!
  
  noStroke();
  fill( 255 );
  circle( x, y, 100 );
  fill( 255, 0, 0 );
  circle( x, y, 50 );  //iriss
  fill( 0 );
  circle( x, y, 20 );  //pupila
  
  popStyle();  //--------------fin de estilo (propiedades de dibujo) reset! 
}

// ojo con cuatro parametros
void ojo( float x, float y, float t, color c ){
  pushStyle();  //--------------inicio de estilo (propiedades de dibujo) reset!
  
  noStroke();
  fill( 255 );
  circle( x, y, t );
  fill( c );
  circle( x, y, t/2 );  //iriss
  fill( 0 );
  circle( x, y, t/5 );  //pupila
  
  popStyle();  //--------------fin de estilo (propiedades de dibujo) reset! 
}


/*
void boca(){

}

void cara(){
  ojo();
  ojo();
  boca();
}
*/
