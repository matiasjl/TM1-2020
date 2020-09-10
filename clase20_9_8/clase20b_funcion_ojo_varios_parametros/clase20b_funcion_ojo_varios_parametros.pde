
// funciones de dibujo tipo void

void setup(){
  size( 800, 300 );
}

void draw(){
  //float aux = map( mouseX, 0, width, 0, 255 );  //funcion de Processing tipo float
  //background( aux );  //funcion de Processing tipo void
      
  ojo( frameCount*50, 100, random(100), color(random(255), random(255), random(255)) );
  
}

//funcion = evento
void mousePressed(){
  ojo( random(width), 200, random(100), color(random(255), random(255), random(255)) );
}
