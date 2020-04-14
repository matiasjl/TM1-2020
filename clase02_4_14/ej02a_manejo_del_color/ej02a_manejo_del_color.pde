/*  todo lo que esta entre barras es comentario

MANEJO DEL COLOR

Paleta de color RGB = colores primarios de la luz (sintesis aditiva)

  R = red (rojo)
  G = green (verde)
  B = blue (azul)
  
  VALORES DE 0 a 255
  
Otros tipos de paleta son:
  - paleta CMY = Cyan, Magenta, Yellow (mezcla sustantiva)
  - paleta HSB (Hue, Saturation, Brightness)

*/

void setup(){  //configurar
  size( 400, 400 );
  background( 255 );  //--> BLANCO
}

void draw(){   //dibujar  //se repite todo el tiempo
  //background( r, g, b );  //--> PINTA EL FONDO
  //background( valorDeGris );
  background( 0 );  //--> NEGRO

  //rect( x, y, ancho, alto );
  //fill( r, g, b );  --> COLOR DE LAS PRIMITIVAS
  //fill( valorDeGris );
  
  //cuadrado grande
  fill( 255, 0, 0 );         //--> ATRIBUTO DE FUNCION DE DIBUJO
  rect( 50, 50, 300, 300 );  //--> FUNCION PRIMITIVA DE DIBUJO 2D
  
  //cuadrado mediano
  fill( 0, 255, 0 );
  rect( 100, 100, 200, 200 );

  //cuadrado chico
  fill( 0, 0, 255 );
  rect( 150, 150, 100, 100 );
  
  //circulo pequeño
  fill( 255 );
  ellipse( 200, 200, 50, 50 );

}  // EN ESTE INSTANTE ES CUANDO SE DIBUJA LA PANTALLA
