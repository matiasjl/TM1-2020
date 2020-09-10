
// funciones que retornan valor (por ejemplo, matemáticas)

void setup(){
  size( 600, 600 );
  
  //uso de funcion suma()
  println( "La suma de 2 + 2 es: " + suma(2, 2) );
  println( "La suma de 10 + 10 es: " + suma(10, 10) );
  println( "La suma de 2 + 10 es: " + suma(2, 10) );
}

void draw(){
  
  if( estoyEnLaMitadDerechaDeLaPantalla() ){
    background( 255 );
  }else{
    background( 0 );
  }
  
  
  //uso de funcion multiplicar
  float m = multiplicar( frameCount, 2 );
  fill( 255, 0, 0 );
  textSize( 48 );
  textAlign( CENTER, CENTER );
  text( m, width/2, height/2 );
  
  
  
}
