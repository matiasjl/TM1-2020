
// primer letra en mayus: String, PImage..

class Muneco{

  // CAMPOS (variables) #propiedes
  float x, y;
  float t;
  
  // CONSTRUCTOR > metodo/funcion inicial (el "setup" del objeto)
  Muneco( float x_, float y_, float t_ ) {
    // inicializar las propiedades
    x = x_;
    y = y_ ;
    t = t_;
  }

  // METODOS (funciones) #acciones
  void moverConMouse() {
    x = mouseX;
  }

  void dibujar() {
    pushStyle();
    strokeWeight( t/50 );
    line(x-t/6, y, x-t/2, y-t/4);
    line(x+t/6, y, x+t/2, y-t/4);
    noStroke();
    fill(255);
    //cabeza
    circle(x, y-t/4, t/4);
    //cuerpo
    circle(x, y, t/3);
    //cuerpo2
    circle(x, y+t/4, t/2);
    //ojos
    fill(0);
    circle(x-t/15, y-t/4, t/50);
    circle(x+t/15, y-t/4, t/50);
    popStyle();
  }

  //-----------------------------------------
  // METODOS PARA KeyPressed()
  void moverIzq() {
    if ( keyCode == LEFT )
      x -= t;
  }

  void moverDer() {
    if ( keyCode == RIGHT )
      x += t;
  }
}
