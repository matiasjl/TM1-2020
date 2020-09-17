
//función botón: programa optimizado!

color fondo;

//variables para boton: podrían ser valores directos
float btnX = 250; 
float btnY = 350;
float btnR = 50;

void setup(){
  size( 500, 500 );
  fondo = color(0);
}

void draw(){
  background( fondo );

  //actualizar estado boton  --> importante en draw()
  //dibujar mi boton
  btnDisplay(btnX, btnY, btnR);
  
}

void mousePressed(){
  //calcular si hago clic en mi boton  --> importante en mousePressed()
  if( btnZona(btnX, btnY, btnR) ){
    fondo = color( random(255), 0, 0 );
  }

}
