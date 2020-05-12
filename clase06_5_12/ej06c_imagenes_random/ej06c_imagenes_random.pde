
//carga y visualizacion de imagenes externas

//variable que permite cargar imagenes
PImage miPelota;

//declaro varias variables del mismo tipo en una sola linea
float posX, posY;

void setup() {
  size( 400, 400 );

  //cargo mi imagen en la variable
  miPelota = loadImage( "futbol.png" );

  //similar al rectMode: corner, center
  imageMode( CENTER );
  rectMode( CENTER );

  //asigno valor ALEATORIO a variables
  posX = random( 100, 300 );
  posY = random( 100, 300 );
  
}

void draw() {
  //background( 100 );

  //recuadro = funciona como background con transparencia
  strokeWeight( 20 );
  fill( 200, 20 );
  rect( width/2, height/2, width, height );

  //visualizo mi imagen
  image( miPelota, posX, posY );
  //image( miPelota, posX, posY, 20, 20 );
  //image( miPelota, posX, posY, random(40,80), random(40,80) );

  //asigno valor ALEATORIO a variables
  posX = random( 0, 400 );
  posY = random( 0, 400 );

  //imprimo valores en consola
  println( posX + " / " + posY );
}
