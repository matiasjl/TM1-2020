
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
    if( i%2 == 0 )  //evalua si el indice (i) es par con MODULO
      fill( 0 );
    else
      fill( 255 );
    rect( i*tamAncho, 0, tamAncho, height );
  }
  
  
  //modulo = %
  
  //condicion si es par
  //(i%2 == 0)
  
  //condicion si es impar
  //(i%2 == 1)

}
