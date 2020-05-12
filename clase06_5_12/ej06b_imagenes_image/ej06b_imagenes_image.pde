
//carga y visualizacion de imagenes externas

//variable que permite cargar imagenes
PImage miPelota;

void setup() {
  size( 400, 400 );

  //cargo mi imagen en la variable
  miPelota = loadImage( "futbol.png" );

  //similar al rectMode: corner, center
  imageMode( CENTER );
  rectMode( CENTER );
}

void draw() {
  background( 100 );

  //recuadro
  strokeWeight( 20 );
  fill( 200 );
  rect( width/2, height/2, 200, 200 );

  //visualizo mi imagen
  image( miPelota, width/2, height/2 );
}
