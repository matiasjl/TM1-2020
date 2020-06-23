
// https://processing.org/reference/dist_.html

color relleno = color( 255 );
int radio = 125;

void setup(){
  size( 500, 500 );
  strokeWeight( 5 ); 
}

void draw(){
  background( 0 );
  
  //calculo la distancia entre mouse y centro de pantalla
  float distancia = dist( mouseX, mouseY, width/2, height/2 );
  
  // si el mouse esta dentro del circulo lo pinto de rojo
  if( distancia < radio )
    relleno = color( 255, 0, 0 );
  else
    relleno = color( 255 );
      
  //dibujo mis figuras
  fill( relleno );
  ellipse( width/2, height/2, radio*2, radio*2 );
  stroke( 255, 0, 0 );
  line( mouseX, mouseY, width/2, height/2 );
  
  //debug: acción de buscar errores de código
  println( distancia + " | " + radio );

}
