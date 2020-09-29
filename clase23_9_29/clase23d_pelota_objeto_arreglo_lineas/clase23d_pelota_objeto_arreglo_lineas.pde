// ejercicio original x Denise Castro
// modificación (arreglo de objetos) x JL

int c = 200;
//declaro y creo el arreglo
Pelota[] pel = new Pelota[c];

void setup() {
  size(900, 700);
  for ( int i = 0; i < c; i++ ) {
    //creo cada instancia de objeto
    pel[i]=new Pelota( random(50, 150), color(255, 0, 0, random(100)) );
  }
}
void draw() {
  //background(25);
  fill( 200, 70 );
  rect(0, 0, width, height );
  
  for ( int i = 0; i < c; i++ ) {
    pel[i].move();
    pel[i].reb();
    //dibuja circulos
    //pel[i].dib();
    //dibuja lineas
    pel[i].dib2( pel );
  }
}
