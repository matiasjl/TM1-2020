
class Juego {

  // PROPIEDADES (variables)
  // EstadoGeneralDelJuego = menu, jugar, ganar, perder
  String estado;
  // Muneco jugador;
  Muneco jugador;
  // Arreglo de Copos como copos
  int c = 10;
  Copo[] copos = new Copo[c];
  // Arreglo de Copos como cenizas
  Copo[] cenizas = new Copo[c];


  // CONSTRUCTOR (setup del objeto)
  Juego() {
    // EstadoGeneralDelJuego = "menu";
    estado = "jugar";
    // inicializar los objetos: jugador, copos, cenizas
    jugador = new Muneco( width/2, height/4*3, width/8 );
    for ( int i = 0; i < c; i++ ) {
      copos[i] = new Copo( -100, i, true );
      cenizas[i] = new Copo( -200, i+10, false );
    }
  }

  // METODOS (funciones) 
  // actualizar()
  void actualizar() {
    // --logicaDeEstados
    if ( estado.equals( "jugar" ) ) {
      // --muneco.actualizar();  --> no es el caso;
      for ( int i = 0; i < c; i++ ) {  
        // --copos.actualizar();
        copos[i].actualizar();
        // --cenizas.actualizar();
        cenizas[i].actualizar();
      }
      // --------------- COLISION
      jugador.agrandar( copos );
      jugador.achicar( cenizas );
    }
  }

  // dibujar()
  void dibujar() {
    // --logicaDeEstados
    if ( estado.equals( "jugar" ) ) {
      // --llamar a los metodos dibujar de mis objetos
      jugador.dibujar();
      for ( int i = 0; i < c; i++ ) {  
        // --copos.dibujar();
        copos[i].dibujar( true );
        // --cenizas.dibujar();
        cenizas[i].dibujar( true );
      }
    }
  }

  void teclas() {
    jugador.moverDer();
    jugador.moverIzq();
  }

  // resetear()
  // --copos.reciclar();
}
