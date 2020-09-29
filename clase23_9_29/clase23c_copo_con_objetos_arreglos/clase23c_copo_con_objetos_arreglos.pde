
int c = 500;

//declaro un objeto de la clase Copo Y CREAR EL ARREGLO
Copo[] copos = new Copo[c];

void setup(){
  size( 400, 400 );
  
  //creo CADA objeto: llamo al constructor!
  for( int i = 0 ; i < copos.length ; i++ ){
    copos[i] = new Copo( random(-100, -200), i );
  }
}

void draw(){
  background( #00AAE4 );
  
  for( int i = 0 ; i < copos.length ; i++ ){
    copos[i].actualizar();
    copos[i].dibujar( true );
  }
}
