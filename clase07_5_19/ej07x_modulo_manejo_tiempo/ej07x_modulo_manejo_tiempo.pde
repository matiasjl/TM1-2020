
// MODULO % = resto de una division
// https://processing.org/reference/modulo.html

void setup(){
  size( 300, 200 );
  
}

void draw(){
  background( 200 );
  
  //if(...
  //ellipse( random(width), random(height), 30, 30 ); 
  
  ellipse( frameCount%300, 100, 50, 50 );  
  println( frameCount%100 );

}
