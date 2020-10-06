
// JUEGO: NEVADA

Juego juego;  //Juego es la clase, y juego es el objeto (instancia de la clase)

void setup(){
  size( 600, 600 );

  juego = new Juego();

}

void draw(){
  background( #00AAE4 );

  //llamo a los métodos de la clase Juego
  juego.actualizar();
  juego.dibujar();
}

void keyPressed(){
  //funciona pero NO CORRECTO
  //juego.jugador.moverDer();
  //juego.jugador.moverIzq();

  //modo correcto
  juego.teclas();
}

void mousePressed(){

}
