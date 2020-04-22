
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
  size( 400, 350 );
  //modificacion modo de color: RGB, HSB
  colorMode( HSB );
  colorMode( HSB, 360, 100, 100 );  //le doy valores de máxima
    
  // COLOR ROJO EN DIFERENTES PALETAS 
  //paleta RGB
  background( 255, 0, 0 );
  //hexadecimal
  background( #FF0000 );
  //paleta HSB
  background( 0, 0, 100 );  //grisesito  
  
  noStroke();

}

void draw(){  //dibujar
  
  //degradez de cuadrados rojos
  fill( 0, 100, 100 );
  rect( 50, 50, 50, 25 );
  fill( 0, 90, 100 );
  rect( 50, 75, 50, 25 );
  fill( 0, 80, 100 );
  rect( 50, 100, 50, 25 );
  fill( 0, 70, 100 );
  rect( 50, 125, 50, 25 );
  fill( 0, 60, 100 );
  rect( 50, 150, 50, 25 );
  fill( 0, 50, 100 );
  rect( 50, 175, 50, 25 );
  fill( 0, 40, 100 );
  rect( 50, 200, 50, 25 );
  fill( 0, 30, 100 );
  rect( 50, 225, 50, 25 );
  fill( 0, 20, 100 );
  rect( 50, 250, 50, 25 );
  fill( 0, 10, 100 );
  rect( 50, 275, 50, 25 );
  
  //amarillo
  fill( 60, 100, 100 );
  rect( 100, 50, 50, 50 );
  fill( 60, 100, 80 );
  rect( 100, 100, 50, 50 );
  fill( 60, 100, 60 );
  rect( 100, 150, 50, 50 );
  fill( 60, 100, 40 );
  rect( 100, 200, 50, 50 );
  fill( 60, 100, 20 );
  rect( 100, 250, 50, 50 );
  
  //degradez de cuadrados verdes
  fill( 120, 100, 100 );
  rect( 150, 50, 50, 25 );
  fill( 120, 90, 100 );
  rect( 150, 75, 50, 25 );
  fill( 120, 80, 100 );
  rect( 150, 100, 50, 25 );
  fill( 120, 70, 100 );
  rect( 150, 125, 50, 25 );
  fill( 120, 60, 100 );
  rect( 150, 150, 50, 25 );
  fill( 120, 50, 100 );
  rect( 150, 175, 50, 25 );
  fill( 120, 40, 100 );
  rect( 150, 200, 50, 25 );
  fill( 120, 30, 100 );
  rect( 150, 225, 50, 25 );
  fill( 120, 20, 100 );
  rect( 150, 250, 50, 25 );
  fill( 120, 10, 100 );
  rect( 150, 275, 50, 25 );

  //cyan
  fill( 180, 100, 100 );
  rect( 200, 50, 50, 50 );
  fill( 180, 100, 80 );
  rect( 200, 100, 50, 50 );
  fill( 180, 100, 60 );
  rect( 200, 150, 50, 50 );
  fill( 180, 100, 40 );
  rect( 200, 200, 50, 50 );
  fill( 180, 100, 20 );
  rect( 200, 250, 50, 50 );

  //degradez de cuadrados azules
  fill( 240, 100, 100 );
  rect( 250, 50, 50, 25 );
  fill( 240, 90, 100 );
  rect( 250, 75, 50, 25 );
  fill( 240, 80, 100 );
  rect( 250, 100, 50, 25 );
  fill( 240, 70, 100 );
  rect( 250, 125, 50, 25 );
  fill( 240, 60, 100 );
  rect( 250, 150, 50, 25 );
  fill( 240, 50, 100 );
  rect( 250, 175, 50, 25 );
  fill( 240, 40, 100 );
  rect( 250, 200, 50, 25 );
  fill( 240, 30, 100 );
  rect( 250, 225, 50, 25 );
  fill( 240, 20, 100 );
  rect( 250, 250, 50, 25 );
  fill( 240, 10, 100 );
  rect( 250, 275, 50, 25 );
  
  //magenta
  fill( 300, 100, 100 );
  rect( 300, 50, 50, 50 );
  fill( 300, 100, 80 );
  rect( 300, 100, 50, 50 );
  fill( 300, 100, 60 );
  rect( 300, 150, 50, 50 );
  fill( 300, 100, 40 );
  rect( 300, 200, 50, 50 );
  fill( 300, 100, 20 );
  rect( 300, 250, 50, 50 );

}
