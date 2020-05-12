
//Repaso Modulo 2: variables, texto y imagenes.
//Intro THE SIMPSONS

//texto: título
PFont miLetra;
float tamTexto;

//imagen: nube(s)
PImage miNube;
float posXn1, posXn2;
int vel;

//variables de color
color celesteSimpson;
color amarilloSimpson;

void setup(){
  size( 400, 400 );
  
  //cargo tipografía e imágenes
  miLetra = loadFont( "Simpsonfont-100.vlw" );
  miNube = loadImage( "nube.png" );
  
  //defino caracteristicas del texto e imagen
  textFont( miLetra );
  textAlign( CENTER, CENTER );
  imageMode( CENTER );
  
  //variables: valores iniciales
  tamTexto = 1;
  posXn1 = 100;
  posXn2 = 300;
  vel = 2;
  
  //defino valor de variables de color
  celesteSimpson = color( 0, 191, 255 );
  amarilloSimpson = color( 255, 255, 0 );
}

void draw(){
  background( celesteSimpson );
  
  //TEXTO
  textSize( tamTexto );
  fill( amarilloSimpson );
  text( "The", width/2, height/2 - tamTexto/2 );
  text( "Simpsons", width/2, height/2 + tamTexto/2 );
  
  //IMAGEN
  //nube izquierda
  image( miNube, posXn1, 200, 400, 400 );
  //nube derecha
  image( miNube, posXn2, 200, 300, 300 );
  
  //variables: actualización
  tamTexto = tamTexto + 0.5;
  posXn1 = posXn1 - vel;
  posXn2 += vel;
}
