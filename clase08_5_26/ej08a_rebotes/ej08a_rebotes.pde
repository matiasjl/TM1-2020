
int radio;
color relleno;
float posx, posy;
boolean sentido;  //true or false

void setup(){
  size( 500, 300 );
  strokeWeight( 4 );
  
  radio = 50;
  relleno = color( 200, 200, 0 );
  
  posx = width/2;
  posy = height/2;
}

void draw(){
  background( 128 );

  //actualizar valores: detectar bordes
  if( posx+radio == width ){
    //CUANDO: toco borde derecho
    sentido = false;
  }
  if( posx-radio == 0 ){
    //CUANDO: toco borde izquierdo
    sentido = true;
  }
  //actualizar valores: ejecutar movimiento
  if( sentido ){
    posx++;  //voy hacia la derecha
  } else {
    posx--;  //voy hacia la izquierda
  }
  println( sentido );
  
  
  //dibujar la ellipse/btn
  fill( relleno );
  ellipse( posx, posy, radio*2, radio*2 );
}
