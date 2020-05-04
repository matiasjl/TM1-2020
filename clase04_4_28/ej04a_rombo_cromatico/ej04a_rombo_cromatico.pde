//esto es un comentario

void setup() {  //configurar
  //funcion( parametr1, parametro2, ... );
  size( 400, 400 );
  background( 255 );  //fondo blanco
  //cambio el modo de color
  //colorMode( RGB );  //valores maximos son 255
  //colorMode( HSB );  //valores maximos son 255
  colorMode( HSB, 360, 100, 100 );  //numeros: defino los máximos de valores
}

void draw() {  //dibujar
  //grilla
  stroke ( 0 );
  strokeWeight( 1 );
  //line( x1, y1, x2, y2 );
  //lineas verticales
  //line( 50, 0, 50, height );
  //line( 100, 0, 100, height );
  //line( 150, 0, 150, height );
  line( 200, 0, 200, height );  //linea del medio
  //line( 250, 0, 250, height );
  //line( 300, 0, 300, height );
  //line( 350, 0, 350, height );
  //lineas horizontas
  //line(0, 50, width, 50);
  //line(0, 100, width, 100);
  //line(0, 150, width, 150);
  line(0, 200, width, 200);  //linea del medio
  //line(0, 250, width, 250);
  //line(0, 300, width, 300);
  //line(0, 350, width, 350);
  
  //CUADRILATERO PARA UNIR TODOS LOS CIRCULOS
  quad( 200, 50, 350, 200, 200, 350, 50, 200 );
  
  //TRIANGULO CONEXION COLORES PRIMARIOS
  noFill();  //sin relleno
  stroke( 0 );  //color linea
  strokeWeight( 5 );  //grosor linea
  triangle( 200, 50, 300, 250, 100, 250 );  //posiciones que corresponden a los circulos  
  
  //TRIANGULO CONEXION COLORES SECUNDARIOS
  triangle( 300, 150, 200, 350, 100, 150 );  //posiciones que corresponden a los circulos
  
  //circulo 1: ROJO
  //fill( 360, 100, 100 );    //ES LO MISMO
  fill( 0, 100, 100 );
  noStroke();
  ellipse( 200, 50, 50, 50 );
  
  //circulo 2
  fill( 30, 100, 100 );
  noStroke();
  ellipse( 250, 100, 50, 50 );

  //circulo 3: AMARILLO
  fill( 60, 100, 100 );
  noStroke();
  ellipse( 300, 150, 50, 50 );

  //circulo 4: 
  fill( 90, 100, 100 );
  noStroke();
  ellipse( 350, 200, 50, 50 );

  //circulo 5: VERDE
  fill( 120, 100, 100 );
  noStroke();
  ellipse( 300, 250, 50, 50 );

  //circulo 6: 
  fill( 150, 100, 100 );
  noStroke();
  ellipse( 250, 300, 50, 50 );

  //circulo 7: CYAN
  fill( 180, 100, 100 );
  noStroke();
  ellipse( 200, 350, 50, 50 );

  //circulo 8: 
  fill( 210, 100, 100 );
  noStroke();
  ellipse( 150, 300, 50, 50 );

  //circulo 9: AZUL
  fill( 240, 100, 100 );
  noStroke();
  ellipse( 100, 250, 50, 50 );

  //circulo 10: 
  fill( 270, 100, 100 );
  noStroke();
  ellipse( 50, 200, 50, 50 );

  //circulo 11: MAGENTA
  fill( 300, 100, 100 );
  noStroke();
  ellipse( 100, 150, 50, 50 );

  //circulo 12: 
  fill( 330, 100, 100 );
  noStroke();
  ellipse( 150, 100, 50, 50 );

  //borde de la pantalla
  noFill();
  stroke ( 128 );  //gris medio
  strokeWeight( 30 );  //20 pixeles
  //rect( 0, 0, width, height, 30 );  //rectMode( CORNER );  //POR DEFECTO
  //rectMode( CENTER );
  //rect( 200, 200, 400, 400, 30 );  //CENTER: las coordenadas corresponden al centro (como en ellipse())
  rectMode( CORNERS );
  rect( 0, 0, 400, 400, 30 );  //CORNERS: sus parámetros son dos coordenadas, correspondientes a las esquinas superior izquierda e inferior derecha  
  
 }
