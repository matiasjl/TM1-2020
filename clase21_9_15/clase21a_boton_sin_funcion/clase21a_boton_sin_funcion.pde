
//función botón: programa sin optimizar

color fondo;
color btnEstado;
float btnX = 250; 
float btnY = 350;
float btnR = 50;

void setup(){
  size( 500, 500 );
  fondo = color(0);
  btnEstado = color( 255 );
}

void draw(){
  background( fondo );

  //actualizar estado boton
  if( dist(mouseX, mouseY, btnX, btnY ) < btnR ){ 
    btnEstado = color( 255, 0, 0 );
  }else{
    btnEstado = color ( 100 );
  }
  //dibujar mi boton
  fill( btnEstado );
  circle( btnX, btnY, btnR*2 );
  
}

void mousePressed(){
  //calcular si hago clic en mi boton
  if( dist(mouseX, mouseY, btnX, btnY ) < btnR ){
    fondo = color( random(255), 0, 0 );
  }

}
