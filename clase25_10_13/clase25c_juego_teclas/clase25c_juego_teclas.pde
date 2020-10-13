
// JUEGO: NEVADA

//SONIDO: importo las clases de la librería de sonido
import processing.sound.*;


Juego juego;  //Juego es la clase, y juego es el objeto (instancia de la clase)
//SONIDO: creo un objeto para la musica de fondo
SoundFile musicaDeFondo;

void setup() {
  size( 600, 600 );
  imageMode( CENTER );

  juego = new Juego();


  //SONIDO: cargo el archivo de audio (¡llamo al constructor de la clase!)
  musicaDeFondo = new SoundFile(this, "fondo.wav");

  //SONIDO: reproducir repetidamente e infinitvamente
  musicaDeFondo.loop();
  //SONIDO: reproducir una sola vez desde el comienzo al final
  //musicaDeFondo.play();
  
  /* iIMPORTANTE SONIDO
  
    ejecutarlo en un EVENTO
    (setup, tecla, colision...  un instante)
  
    porque si lo ejecuto en un estado (como draw) 
    SE EJECUTA MUCHAS VECES Y CAOS
  */
}

void draw() {
  background( #00AAE4 );

  //llamo a los métodos de la clase Juego
  juego.actualizar();
  juego.dibujar();
  
}

void keyPressed() {
  //funciona pero NO CORRECTO
  //juego.jugador.moverDer();
  //juego.jugador.moverIzq();

  //modo correcto
  juego.teclas();
}

void mousePressed() {
}
