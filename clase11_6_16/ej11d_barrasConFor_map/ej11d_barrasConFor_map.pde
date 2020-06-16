
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
    //calculos
    float m = map( i, 0, 9, 0, 255 );
    println( i + ": " + m );
    //dibujo
    fill( m );
    rect( i*tamAncho, 0, tamAncho, height );
  }
  
  
  //map() = escalar valores
  //float m = map( miValorAescalar, inicioEscala1, finEscala1, inicioEscala2, finEscala2 );
  
  //1er escala: 0-9 (iteraciones del for)
  //2da escala: 0-255 (rango de color)
  

}
