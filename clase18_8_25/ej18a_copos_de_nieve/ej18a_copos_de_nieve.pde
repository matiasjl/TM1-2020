
// copos de nieve... para el muñeco de nieve!

//propiedades > variables
float x, y;
float tam;
float vel;
color relleno;

void setup(){
  size( 500, 500 );
  noStroke();

  //inicializar las variables
  x = random( width );
  y = -100;
  tam = random( 10, 25 );
  vel = random( 0, 3 );
  relleno = color( 255, random(50, 150) );
}

void draw(){
  background( 200 );

  //actualizar
  y = y + vel;
  if( y > height + tam/2 ){
    reciclar();
  } 
  
  //dibujar
  fill( relleno );
  ellipse( x, y, tam, tam );
  
  
  println( "y: " + y );
}

void reciclar(){
  x = random( width );
  y = -100;
  tam = random( 10, 25 );
  vel = random( 0, 3 );
  relleno = color( 255, random(50, 150) );  
}
