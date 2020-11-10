
//EVENTOS de TECLADO y MOUSE (Interactividad)
//Evento es CUANDO

//CUANDO: al iniciar el programa
void setup(){
  size( 400, 600 );
  background( 255 );
  noFill();
  
}

//CUANDO: siempre, a 60fps por defecto (se repite)
void draw(){
  //no lo uso para dejar rastro del lapiz
  //background( 255 );
  
  //LAPIZ
  //dibujo iuna linea entre la posición actual y la anterior del mouse
  line( mouseX, mouseY, pmouseX, pmouseY );

}

//CUANDO: al presionar cualquier tecla del teclado
void keyPressed(){
  background( 255 );
}

//CUANDO: al presionar el clic del mouse
void mousePressed(){
  background( 200 );
}
