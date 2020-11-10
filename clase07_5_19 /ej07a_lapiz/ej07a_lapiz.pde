
//EVENTOS de TECLADO y MOUSE (Interactividad)

void setup(){
  size( 400, 600 );
  background( 255 );
  noFill();
  
  //fuerzo frameRate para que sea evidente el error
  frameRate( 5 );
}

void draw(){
  //background( 255 );
  
  //ellipse( width/2, height/2, mouseX, mouseY );
  ellipse( mouseX, mouseY, 10, 10 );
  //the best solution
  //dibujo iuna linea entre la posición actual y la anterior del mouse
  line( mouseX, mouseY, pmouseX, pmouseY );

}
