
// Muñeco de nieve cual personaje con Programación Procedural o Estructurada

// Propiedades de nuestro personaje
float posX, posY, tam;

void setup(){
  size( 1000, 600 );

  // inicializar las propiedades
  posX = width / 2;
  posY = 400 ;
  tam = 100;
}


void draw(){
  //background( 100 );
  fill( 100, 20 );
  rect( 0, 0, width, height );
  
  // Accion: mover/actualizar
  //posX = mouseX;
  
  // Accion: dibujar
  snowman( posX, posY, tam );
  
}

void snowman(float x, float y, float t) {
  pushStyle();
  strokeWeight( t/50 );
  line(x-t/6, y, x-t/2, y-t/4);
  line(x+t/6, y, x+t/2, y-t/4);
  noStroke();
  fill(255);
  //cabeza
  circle(x, y-t/4, t/4);
  //cuerpo
  circle(x, y, t/3);
  //cuerpo2
  circle(x, y+t/4, t/2);
  //ojos
  fill(0);
  circle(x-t/15, y-t/4, t/50);
  circle(x+t/15, y-t/4, t/50);
  popStyle();
}

void keyPressed(){
  // Acción: mover con el teclado
  if( keyCode == LEFT )
    posX -= tam;
  if( keyCode == RIGHT )
    posX += tam;
}
