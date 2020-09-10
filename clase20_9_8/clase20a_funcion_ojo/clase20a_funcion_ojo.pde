
// funciones de dibujo tipo void

void setup(){
  size( 400, 200 );
}

void draw(){
  float aux = map( mouseX, 0, width, 0, 255 );  //funcion de Processing tipo float
  background( aux );  //funcion de Processing tipo void
  
  ojo( 150, 100 );
  ojo( 250, 100 );

}

//funcion = evento
void mousePressed(){

}
