
//Estructuras repetitivas: CICLO FOR

int tamAncho;

void setup(){
  size( 400, 200 );
  
  tamAncho = width / 10;

}

void draw(){
  
  /* SINTAXIS CICLO FOR
  
  for(iniciador ; condición ; actualización){
    acciones;
  }
  
  */
  
  //ciclo for que se repite 10 veces: i = 0 hasta 9
  for( int i = 0 ; i < 10 ; i++ ){
    rect( i*tamAncho, 0, tamAncho, height );
  }
  
  //ciclo for que se repite 10 veces: x suma de a 40
  for( int x = 0 ; x < width ; x+=40 ){
    fill( 200 );
    rect( x , 0, tamAncho, height );
  }
  
  
  
  /*
  rect( 0, 0, tamAncho, height );
  rect( 40, 0, tamAncho, height );
  rect( 80, 0, tamAncho, height );
  rect( 120, 0, tamAncho, height );
  rect( 160, 0, tamAncho, height );
  rect( 200, 0, tamAncho, height );
  rect( 240, 0, tamAncho, height );
  rect( 280, 0, tamAncho, height );
  rect( 320, 0, tamAncho, height );
  rect( 360, 0, tamAncho, height );
  */
}
