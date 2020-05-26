
int radio;
color relleno;
float posx, posy;
boolean sentido;  //true or false

float distancia;

void setup(){
  size( 500, 300 );
  strokeWeight( 4 );
  textSize( 24 );
  
  radio = 50;
  relleno = color( 200, 200, 0 );
  
  posx = width/2;
  posy = height/2;
}

void draw(){
  background( 128 );

  ////actualizar valores: detectar bordes
  //if( posx+radio == width ){
  //  //CUANDO: toco borde derecho
  //  sentido = false;
  //}
  //if( posx-radio == 0 ){
  //  //CUANDO: toco borde izquierdo
  //  sentido = true;
  //}
  ////actualizar valores: ejecutar movimiento
  //if( sentido ){
  //  posx++;  //voy hacia la derecha
  //} else {
  //  posx--;  //voy hacia la izquierda
  //}
  //println( sentido );
  
  //dibujar la ellipse/btn
  fill( relleno );
  ellipse( posx, posy, radio*2, radio*2 );
  line( posx, posy, mouseX, mouseY );
  
  //mido e imprimo distancia del mouse a la ellipse
  distancia = dist( posx, posy, mouseX, mouseY );
  fill( 255 );
  text( distancia, 50, 50 );
  
  //definiendo zonas circulares ----!!!!
  if( distancia <= radio ){
    //estoy dentro del circulo/btn
    relleno = color( 200, 0, 0 );
  } else {
    //estoy fuera del circulo/btn
    relleno = color( 200, 200, 0 );
  }
}
