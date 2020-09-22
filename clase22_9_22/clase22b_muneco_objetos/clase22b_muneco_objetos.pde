
// Muñeco de nieve cual personaje con Programación Orientada a Objetos

Muneco m;  //Muneco es la clase, m es el objeto

void setup(){
  size( 1000, 600 );
  
  //inicializo el objeto > llamo al constructor de la clase!
  m = new Muneco( width/2, 400, 100 );
}


void draw(){
  fill( 100, 20 );
  rect( 0, 0, width, height );  
  
  //llamar a los métodos del objeto
  //m.moverConMouse();
  m.dibujar();
}

void keyPressed(){
  //llamar a los métodos del objeto
  m.moverIzq();
  m.moverDer();  
}
