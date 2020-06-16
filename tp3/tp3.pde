
String estado;

PFont miFuente;

//declarar variables imagenes
PImage inicio;
PImage puerta;
PImage d1, d2, d3;

void setup() {
  size( 600, 400 );
  textSize( 32 );
  textAlign( CENTER, CENTER );

  estado = "inicio";

  miFuente = loadFont("AdobeGothicStd-Bold-48.vlw");

  //cargar las imagenes
  inicio = loadImage("vacaciones.jpg");
  puerta = loadImage("puerta1.png");
  d1 = loadImage("d1.jpg");
  d2 = loadImage("d2.jpg");
  d3 = loadImage("d3.jpg");
}

//draw para dibujar las pantallas
void draw() {
  //image( nombreImg, posX, posY, ancho, alto );

  //-------------------------------------------------------------------  
  if ( estado.equals("inicio") ) {
    tint( 255 );
    image( inicio, 0, 0, 700, 400 );
    fill( 0, 50 );
    noStroke();
    rect( 40, 310, 520, 50 );
    fill( 255 );
    textFont( miFuente, 32 );
    text( "Presione la barra espaciadora", width/2, 330 );
    //-------------------------------------------------------------------
  } else if ( estado.equals("puertas") ) {
    background( frameCount%200, 50, 0 );
    noStroke();
    fill( 70 );
    rect( 0, 300, width, 100 );
    tint( 150, 255, 255 );  // Tint red
    image( puerta, 50, 170, 100, 200 );
    tint( 255, 150, 255 );  // Tint blue
    image( puerta, 250, 170, 100, 200 );
    tint( 255, 255, 150 );  // Tint green
    image( puerta, 450, 170, 100, 200 );
    //-------------------------------------------------------------------
  } else if ( estado.equals("montaña") ) {
    tint( 255 );
    image( d1, -200, 0 );
    //-------------------------------------------------------------------
  } else if ( estado.equals("campo") ) {
    tint( 255 );
    image( d2, 0, 0, 600, 400 );
    //-------------------------------------------------------------------
  } else if ( estado.equals("playa") ) {
    tint( 255 );
    image( d3, 0, 0, 600, 400 );
  }
}

//keyPressed para manejar cambios por teclado
void keyPressed() {
  if ( estado.equals("inicio") ) {
    if ( key == ' ' ) {
      estado = "puertas";
    }
  }

  if ( estado.equals("campo") || estado.equals("playa") || estado.equals("montaña") ) {
    if ( keyCode == BACKSPACE ) {
      estado = "inicio";
    }
  }
}

//mousePressed para manejar los clics en las puertas
void mousePressed() {
  if ( estado.equals("puertas") ) {
    //puerta 1 - montaña 50/170
    if( mouseX > 50 && mouseX < 150 && mouseY > 170 && mouseY < 170+200 ){
      estado = "montaña";
    }

    //puerta 2 - campo 250/170
    if( mouseX > 250 && mouseX < 350 && mouseY > 170 && mouseY < 170+200 ){
      estado = "campo";
    }
    
    //puerta 3 - playa 450/170
    if( mouseX > 450 && mouseX < 550 && mouseY > 170 && mouseY < 170+200 ){
      estado = "playa";
    }
    
  }
  
}
