
//Estructuras repetitivas: CICLO FOR

int tamAncho;

void setup(){
  size( 400, 200 );
  colorMode( HSB, 360, 100, 100 );
    
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
    //calculos
    float d = dist( i*tamAncho, 0, 0, 0 );
    //dibujo
    fill( d, 100, 100 );
    rect( i*tamAncho, 0, tamAncho, height );
  }
  
  
}
