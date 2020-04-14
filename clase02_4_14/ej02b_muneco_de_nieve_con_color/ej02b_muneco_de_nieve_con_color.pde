/* Introducción al DIBUJO CON PROCESSING
  
  // atributos de primitivas de dibujo
  
  noFill();  //--> SIN RELLENO
  fill( r, g, b );
  fill( valorDeGris );
  strokeWeight( valorEnPixel );  //--> GROSOR DEL BORDE
  noStroke();  //--> SIN BORDE
  stroke( r, g, b );  //--> COLOR DE LA LINEA
  stroke( valorDeGris );

*/

void setup() {  //"configuracion"
  size( 400, 400 );
  background( 0, 200, 200 );  //CYAN
}

void draw() {  //"dibujar"

  //line( x1, y1, x2, y2 );
  //HORIZONTE
  strokeWeight( 5 );
  line( 0, 300, 400, 300 );
  //PISO
  fill( 255 );
  noStroke();
  rect( 0, 300, 400, 100 );

  //ellipse( posicionEnX, posicionEnY, tamanioAncho, tamanioAlto );
  fill( 230 );  //BLANCO MARFIL para las 3 ellipses
  noStroke();
  //ellipse de arriba
  ellipse( 200, 120, 70, 70 );
  //ellipse del medio
  ellipse( 200, 200, 100, 100 );
  //ellipse de abajo
  ellipse( 200, 300, 130, 130 );
  //triangulo nariz
  //triangle( x1, y1, x2, y2, x3, y3 );
  fill( 64, 37, 17 );
  triangle( 200, 130, 195, 120, 205, 120 );

  //line( x1, y1, x2, y2 );
  strokeWeight( 6 );
  stroke( 64, 37, 17 );
  //brazo izquierdo
  line( 180, 200, 100, 150 );
  //brazo derecho
  line( 220, 200, 300, 150 );
  
  //rect( x, y, ancho, alto );  //se dibuja desde la esquina superior izquierda
  //un sol pixelado
  noStroke();
  fill( 255, 255, 0 );  //AMARILLO
  rect( 20, 20, 70, 70 );
 
}