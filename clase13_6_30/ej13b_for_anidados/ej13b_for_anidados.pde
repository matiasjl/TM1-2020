
// EJERCICIO EN CLASE #1
// Armar una fila (horizontal) de 10 cuadrados con un ciclo for

// EJERCICIO EN CLASE #2
// Armar una columna (vertical) de 10 cuadrados con un ciclo for

// EJERCICIO EN CLASE #3
// Armar una grilla de 10x10 cuadrados combinando los ejercicios anteriores

// Si lo resolvieron, poner RESUELTO en el chat :)
// Si tienen duda, abran el microfóno y pregunten!

int cant = 10;
int tam;

void setup(){
  size( 600, 600 );
  tam = width / cant ;  //60
}

void draw(){
  background( 0 );
  
  //-----------------------------------------------------
  // EJERCICIO EN CLASE #1
  // Armar una fila (horizontal) de 10 cuadrados con un ciclo for
  for( int i = 0 ; i < cant ; i++ ){
    rect( i*tam, height/2, tam, tam );
  }
  //-----------------------------------------------------
  
  //-----------------------------------------------------
  // EJERCICIO EN CLASE #2
  // Armar una columna (vertical) de 10 cuadrados con un ciclo for
  for(int i = 0; i < cant; i++){
    rect( 300, tam*i, tam, tam);
  }
  //-----------------------------------------------------
  
  //-----------------------------------------------------
  // EJERCICIO EN CLASE #3
  // Armar una grilla de 10x10 cuadrados combinando los ejercicios anteriores
  for( int i = 0 ; i < cant ; i++ ){
    for( int j = 0 ; j < cant ; j++ ){
      rect( i*tam, j*tam, tam, tam );
    }
  }
  //-----------------------------------------------------  
  
}
