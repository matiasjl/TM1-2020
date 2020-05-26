
// PAINT v2

color cLapiz;
boolean gomaDeBorrar;
int gLapiz;

//CUANDO: al iniciar el programa
void setup() {
  size( 400, 600 );
  background( 255 );
  noFill();

  //color por defecto de la linea
  cLapiz = color( 0 );

  //inicializo la variable booleana
  gomaDeBorrar = false;
  
  //grosor por defecto de la linea
  gLapiz = 1;
}

//CUANDO: siempre, a 60fps por defecto (se repite)
void draw() {
  
  //GUI - Interfaz gráfica de Usuario
  
  //linea horizontal --> zona rectangular
  stroke( 0 );
  strokeWeight( 1 );
  noFill();
  //line( 0, height-100, width, height-100 );
  rect( 50, 50, width-100, height-150 );
  
  //BOTONES circulares para grosor
  fill( 0 );
  ellipse( 50, height-50, 20, 20 );
  ellipse( 90, height-50, 40, 40 );
  ellipse( 150, height-50, 60, 60 );
  
  //BOTONES rectangulares para color
  rectMode( CENTER );
  fill( 255, 0, 0 );
  rect( 220, height-50, 50, 50 );
  fill( 0, 255, 0 );
  rect( 280, height-50, 50, 50 );
  fill( 0, 0, 255 );
  rect( 340, height-50, 50, 50 );
  rectMode( CORNER );
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
  
  //GUARDO EL FRAME ACTUAL
  if( key == 's' ){
    saveFrame();  //---------------_!!!!!
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
    //---------------------------------------------------ZONA DE DIBUJO !!!!!!!!!!!!
    if ( mouseY >= 50 && mouseY <= 500 && mouseX >= 50 && mouseX <= 350 
         && pmouseY >= 50 && pmouseY <= 500 && pmouseX >= 50 && pmouseX <= 350 ) {
      //LAPIZ
      stroke( cLapiz );
      strokeWeight( gLapiz );
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

//CUANDO: cuando presiono el mouse = BOTONES
void mousePressed(){
  //boton circular 1
  if( dist(mouseX,mouseY,50,height-50) <= 20/2 ){
    gLapiz = 1;
  }
  //boton circular 2
  if( dist(mouseX,mouseY,90,height-50) <= 40/2 ){
    gLapiz = 4;
  }
  //boton circular 3
  if( dist(mouseX,mouseY,150,height-50) <= 60/2 ){
    gLapiz = 7;
  }
  //------------------------------------------------
  
  //boton cuadrado 1
  if( mouseX >= 220-25 && mouseX <= 220+25 && mouseY >= 550-25 && mouseY <= 550+25 ){
    cLapiz = color( 255, 0, 0 );
  }
  //boton cuadrado 2
  if( mouseX >= 280-25 && mouseX <= 280+25 && mouseY >= 550-25 && mouseY <= 550+25 ){
    cLapiz = color( 0, 255, 0 );
  }
  //boton cuadrado 1
  if( mouseX >= 340-25 && mouseX <= 340+25 && mouseY >= 550-25 && mouseY <= 550+25 ){
    cLapiz = color( 0, 0, 255 );
  }
  

}
