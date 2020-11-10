
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


}

//--------------------------------------------------

//CUANDO: al presionar cualquier tecla del teclado
void keyPressed(){
  background( 255 );
}

//CUANDO: al soltar cualquier tecla del tecla
void keyReleased(){

}

//--------------------------------------------------

//CUANDO: al presionar el clic del mouse
void mousePressed(){
  
}

//CUANDO: al soltar el clic del mouse
void mouseReleased(){

}


//CUANDO: al presionar el clic del mouse y arrastrarlo
void mouseDragged(){
  //LAPIZ
  //dibujo iuna linea entre la posición actual y la anterior del mouse
  line( mouseX, mouseY, pmouseX, pmouseY );  
}

//CUANDO: cuando muevo el mouse
void mouseMoved(){
  ellipse( random(width), random(height), 2, 2 ); 
}
