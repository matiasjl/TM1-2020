
// primer letra en mayus: String, PImage..

class Muneco {

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
      //x -= t;
      x -= 20;
  }

  void moverDer() {
    if ( keyCode == RIGHT )
      //x += t;
      x += 20;
  }

  //-----------------------------------------
  // NUEVOS METODOS PARA COLISIONES (!!!)

  //agranda el tamnio (t) si un copo toca la cabeza del muneco
  void agrandar( Copo[] co ) {
    //recorro el arreglo de copos con un ciclo for
    for ( int i = 0; i < co.length; i++ ) {
      //mido la distancia entre la cabeza y cada copo
      float d = dist( x, y-t/4, co[i].x, co[i].y );
      // DEBUG ----------------------------------------------------------------
      pushStyle();
      noFill();
      stroke( 255, 0, 0 );
      strokeWeight( 5 );
      circle( x, y-t/4, t/4 );
      circle( co[i].x, co[i].y, co[i].tam );     
      strokeWeight( 2 );
      line( x, y-t/4, co[i].x, co[i].y );
      //println( "x: " + x + " | y-t/4: " + (y-t/4) ); 
      //println( "co[i].x: " + co[i].x + " | co[i].y: " + co[i].y ); 
      popStyle();
      // ----------------------------------------------------------------
      //si esa distancia es menor a la mitad del tamanio --> CORREGIR
      if ( d < (t/8 + co[i].tam/2) ) {  //COLISION EFECTIVA: EL RADIO DE LA CABEZA + EL RADIO DE LOS COPOS
        //SUMO el tamanio SEGUN tamanio del copo
        t += co[i].tam;  
        //reciclar el copo: clave para que la colision no se mantiene
        co[i].reciclar();
      }
    }
  }

  //achica el tamnio (t) si un copo toca la cabeza del muneco
  void achicar( Copo[] ce ) {
    //recorro el arreglo de copos con un ciclo for
    for ( int i = 0; i < ce.length; i++ ) {
      //mido la distancia entre la cabeza y cada ceniza
      float d = dist( x, y-t/4, ce[i].x, ce[i].y );
      // DEBUG
      pushStyle();
      noFill();
      stroke( 255, 255, 0 );
      strokeWeight( 5 );
      circle( x, y-t/4, t/4 );
      circle( ce[i].x, ce[i].y, ce[i].tam );     
      popStyle();
      //
      //si esa distancia es menor a la mitad del tamanio --> CORREGIR
      if ( d < t/2 ) {  //COLISION EFECTIVA
        //RESTO el tamanio SEGUN tamanio del copo
        t -= ce[i].tam;  
        //reciclar el copo: clave para que la colision no se mantiene
        ce[i].reciclar();
      }
    }
  }
}
