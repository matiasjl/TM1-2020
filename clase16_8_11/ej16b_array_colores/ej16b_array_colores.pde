
// 2a. armar un array de 100 posiciones, con valores aleatorios de color (0-255) --> int grises o color rgb
// 2b. aplicarlos a una figura que vaya cambiando el color (recorriendo el arreglo).

int r[] = new int[100];  //DEFINO CANTIDAD DE LUGARES
int g[] = new int[100];
int b[] = new int[100];

void setup(){
  frameRate( 10 );
  textAlign( CENTER, CENTER );
  textSize( 42 );
  
  for( int i = 0 ; i < 100 ; i++ ){
    r[i] = int( random(255) );  //ASIGNO VALORES
    g[i] = int( random(255) );
    b[i] = int( random(255) );
  }

}

void draw(){
  
  background( r[frameCount%100], g[frameCount%100], b[frameCount%100] );
  text( frameCount%100, 50, 50 );
  
  println( frameCount%100 );
  
}
