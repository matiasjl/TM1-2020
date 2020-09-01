
PImage m;
float posx;

void setup(){
  //reemplazo al size --> tip!
  fullScreen(2);
  
  //cargo las imagenes
  m = loadImage( "mb00.png" );
  
  posx = 100;
}

void draw(){
  background( 255 );
  image( m, posx, height/2 );
  
}

void keyPressed(){
  posx += 10;
}
