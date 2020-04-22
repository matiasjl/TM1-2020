
/* 

  PALETA HSB: colorMode( HSB );

    H = Hue  (tono)
    S = Saturation  (saturación)
    B = Brightness  (brillo)


  Atributos de funciones primitivas de dibujo:
    
    strokeWeight();  //grosor de linea-borde-contorno
    ellipseMode();   //modo de ellipse: CENTER, CORNER, CORNERS
    rectMode();      //modo de rects:  CENTER, CORNER, CORNERS

*/


void setup(){  //configurar
  size( 400, 400 );
  //modificacion modo de color: RGB, HSB
  colorMode( HSB );
  colorMode( HSB, 360, 100, 100 );  //le doy valores de máxima
    
  //fondo color negro
  background( 0, 100, 0 );  //grisesito  
  
  //atributos de figuras primitivas
  noFill();  //figuras sin relleno
  strokeWeight( 10 );  //grosor del contorno
  rectMode( CENTER );  //CORNER es por defecto
  //ellipseMode( CENTER );  //CENTER es por defecto

}

void draw(){  //dibujar
  
  stroke( (360/6)*1, 100, 100 );
  rect( 200, 200, 300, 300 );
  stroke( (360/6)*2, 100, 100 );
  ellipse( 200, 200, 280, 280 );
  
  stroke( (360/6)*3, 100, 100 );
  rect( 200, 200, 200, 200 );
  stroke( (360/6)*4, 100, 100 );
  ellipse( 200, 200, 180, 180 );

  stroke( (360/6)*5, 100, 100 );
  rect( 200, 200, 100, 100 );
  stroke( (360/6)*6, 100, 100 );
  ellipse( 200, 200, 80, 80 );

}
