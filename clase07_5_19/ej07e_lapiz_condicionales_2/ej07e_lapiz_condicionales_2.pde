
// CONDICIONALES con IF
//
// si ( condicion ){
//   //sucede este codigo
// }
//
// CONDICION = expresion de tipo booleana (TRUE/FALSE)
// -- COMPARACION entre dos valores: >, <, ==, >=, <=, !=

color cLapiz;
boolean gomaDeBorrar;

//CUANDO: al iniciar el programa
void setup() {
  size( 400, 600 );
  background( 255 );
  noFill();

  //color por defecto de la linea
  cLapiz = color( 0 );

  //inicializo la variable booleana
  gomaDeBorrar = false;
}

//CUANDO: siempre, a 60fps por defecto (se repite)
void draw() {
  stroke( 0 );
  line( 0, height-100, width, height-100 );
}

//--------------------------------------------------

//CUANDO: al presionar cualquier tecla del teclado
void keyPressed() {
  if ( key == ' ' ) {
    //borro el dibujo realizado
    background( 255 );
    println( ">> SE BORRO LA PANTALLA" );
  }

  if ( key == 'r' ) {
    //cambio valor de cLapiz a rojo
    cLapiz = color( 255, 0, 0 );
  }

  if ( key == 'g' ) {
    //cambio valor de cLapiz a verde
    cLapiz = color( 0, 255, 0 );
  }

  if ( key == 'b' ) {
    //cambio valor de cLapiz a azul
    cLapiz = color( 0, 0, 255 );
  }

  if ( key == 'k' ) {
    //cambio valor de cLapiz a negro
    cLapiz = color( 0 );
  }
  
  //GOMA DE BORRAR
  if( key == BACKSPACE ){
    gomaDeBorrar = true;
  }
  //LAPIZ
  if( key == ENTER ){
    gomaDeBorrar = false;
  }
  //CAMBIO ENTRE LAPIZ Y GOMA CON MISMA TECLA
  if( key == 'e' ){
    gomaDeBorrar = !gomaDeBorrar;
  }

  println( "La tecla presionada es: " + key );
}

//CUANDO: al presionar el clic del mouse y arrastrarlo
void mouseDragged() {

  if ( gomaDeBorrar == true ) {
    //goma de borrar
    noStroke();
    fill( 240 );
    ellipse( mouseX, mouseY, 50, 50 );
  }

  if ( gomaDeBorrar == false ) {  
    //imprimo en consola valor del mouseY
    println( "mouseY: " + mouseY );
    //SI( PosicionDeMouseY esMenorA 500){ ...
    if ( mouseY <= 500 ) {
      //LAPIZ
      stroke( cLapiz );
      //dibujo iuna linea entre la posición actual y la anterior del mouse
      line( mouseX, mouseY, pmouseX, pmouseY );
    }
  }
}

//CUANDO: cuando muevo el mouse
void mouseMoved() {
  stroke( 0 );
  //ellipse( random(width), random(500), 2, 2 );
}
