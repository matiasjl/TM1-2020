
// VARIABLES DE PROCESSING
// frameCount

void setup(){  //configuracion, se ejecuta una sola vez al iniciar el programa
  size(400, 400 );
  colorMode( RGB );  //no es necesario declarar RGB porque es por defecto
  rectMode( CENTER );
  noStroke();
  
  //defino cantidad de FRAMES por SEGUNDO del DRAW
  frameRate( 5 );
}

void draw(){  //dibujar, se ejecuta (por defecto) 60 fps -frames per second-
  //defino un color de fondo
  //background( frameCount );  //cuando se pasa de 255 hace cosas raras
  background( 255 );
  
  //circulo rojo
  fill( 255, 0, 0 );
  ellipse( frameCount, 0, 300, 300 );
    
  //circulo azul
  fill( 0, 0, 255 );
  ellipse( 400 - frameCount, 400, 300, 300 );

  //cuadrado verde
  fill( 0, 255, 0, 180 );
  rect( width/2, height/2, 400-frameCount, 400-frameCount );

  //frameCount = contador de frames
  //CUANTAS VECES SE EJECUTO EL DRAW
  //es un numero que se incrementa de a 1 al infinito
  //println( frameCount );
  
  println( frameRate );
}
