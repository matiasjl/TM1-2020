//Sencillo
//Emoji-tricolor-con-inputs

  void setup() {
  size(500, 500);
}

void draw() {
  //Definir que botón del mouse estoy presionando
  //Segun cual sea, se dibujara un emoji con un color en particular
  if (mousePressed) {
    if (mouseButton == LEFT) { 
      //emojiamarillo(mouseX, mouseY);
      emoji( mouseX, mouseY, "amarillo" );
    } else if (mouseButton == RIGHT) {
      //emojirojo(mouseX, mouseY);
      emoji( mouseX, mouseY, "rojo" );
    } else if (mouseButton == CENTER) {
      //emojiazul(mouseX, mouseY);
      emoji( mouseX, mouseY, "azul" );
    }
  }
}

//---------------------------------------------------SINTESIS EN UNA SOLA F()-------------------------------------------------------------------------
void emoji( float x, float y, String c ) {
  pushStyle();
  strokeWeight(2); 
  stroke(0);
  //-----------------------
  if( c.equals("amarillo") ){
    fill( 255, 255, 0 );
  }else if( c.equals("azul") ){
    fill( 0, 0, 255 );
  }else if( c.equals("rojo") ){
    fill( 255, 0, 0 );
  }
  //-----------------------
  ellipse( x, y, 100, 100);
  fill( 255 );
  ellipse( x-20, y-15, 25, 25); 
  fill( 255 );
  ellipse( x+20, y-15, 25, 25);
  fill( 0 );
  ellipse( x-20, y-20, 10, 10); 
  fill( 0 );
  ellipse( x+20, y-20, 10, 10);
  rect(x-20, y+20, 40, 5);
  popStyle();
}


//---------------------------------------------------Definir las funciones-------------------------------------------------------------------------
void emojiamarillo( float x, float y ) {
  pushStyle();
  strokeWeight(2); 
  stroke(0);
  fill( #FFD603 );
  ellipse( x, y, 100, 100);
  fill( 255 );
  ellipse( x-20, y-15, 25, 25); 
  fill( 255 );
  ellipse( x+20, y-15, 25, 25);
  fill( 0 );
  ellipse( x-20, y-20, 10, 10); 
  fill( 0 );
  ellipse( x+20, y-20, 10, 10);
  rect(x-20, y+20, 40, 5);
  popStyle();
}

void emojirojo( float x, float y ) {
  pushStyle();
  strokeWeight(2); 
  stroke(0);
  fill( 255, 0, 0);
  ellipse( x, y, 100, 100);
  fill( 255 );
  ellipse( x-20, y-15, 25, 25); 
  fill( 255 );
  ellipse( x+20, y-15, 25, 25);
  fill( 0 );
  ellipse( x-20, y-20, 10, 10); 
  fill( 0 );
  ellipse( x+20, y-20, 10, 10);
  rect(x-20, y+20, 40, 5);
  popStyle();
}

void emojiazul( float x, float y ) {
  pushStyle();
  strokeWeight(2); 
  stroke(0);
  fill( 0, 0, 255);
  ellipse( x, y, 100, 100);
  fill( 255 );
  ellipse( x-20, y-15, 25, 25); 
  fill( 255 );
  ellipse( x+20, y-15, 25, 25);
  fill( 0 );
  ellipse( x-20, y-20, 10, 10); 
  fill( 0 );
  ellipse( x+20, y-20, 10, 10);
  rect(x-20, y+20, 40, 5);
  popStyle();
}
