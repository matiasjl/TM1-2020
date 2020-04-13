// Hola Tecno multimedia 1!

// Introducción al DIBUJO CON PROCESSING

void setup() {  //"configuracion"
  //FUNCION QUE PERMITE ESTABLECER EL TAMANIO DE VENTANA:
  //size( anchoVentana, altoVentana );  //--> píxeles, resolución  
  size( 400, 400 );

  //SINTAXIS DE LAS FUNCIONES:
  //nombreFuncion( parametro1, parametro2, parametro3 );  --> estructura de toda funcion de processing
}

void draw() {  //"dibujar"

  //CONCLUSIÓN 1: el eje de coordenadas (0,0) de loe ejes cartesianos es en la esquina superior izquierda

  //line( x1, y1, x2, y2 );

  //HORIZONTE
  line( 0, 300, 400, 300 );

  //ellipse( posicionEnX, posicionEnY, tamanioAncho, tamanioAlto );
  //se dibuja desde el centro

  //ellipse de arriba
  ellipse( 200, 120, 70, 70 );
  //ellipse del medio
  ellipse( 200, 200, 100, 100 );
  //ellipse de abajo
  ellipse( 200, 300, 130, 130 );

  //CONCLUSIÓN 2: EL CÓDIGO SE EJECUTA DE MANERA SECUENCIAL

  //line( x1, y1, x2, y2 );

  //brazo izquierdo
  line( 180, 200, 100, 150 );

  //brazo derecho
  line( 220, 200, 300, 150 );
  
  //rect( x, y, ancho, alto );  //se dibuja desde la esquina superior izquierda
  
  //un sol pixelado
  rect( 20, 20, 70, 70 );
 
  //CONSLUSION 3: EL LENGUAJE ES CASE-SENSITIVE (sensible a las mayusculas)

}
