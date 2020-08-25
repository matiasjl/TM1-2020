
// copos de nieve... para el muñeco de nieve! +arreglos

int c = 100;

//propiedades > variables
float[] x = new float[c];
float[] y = new float[c];
//tam = new int[100] > mal sintaxis
float[] tam = new float[c];
float[] vel = new float[c];
color[] relleno = new color[c];

void setup() {
  size( 500, 500 );
  noStroke();

  //inicializar las variables
  for ( int i = 0; i < c; i++ ) {
    x[i] = random( width );
    y[i] = -100;
    tam[i] = random( 10, 25 );
    vel[i] = random( 1, 3 );
    relleno[i] = color( 255, random(50, 150) );
  }
}

void draw() {
  background( 200 );

  //actualizar
  for ( int i = 0; i < c; i++ ) {
    y[i] = y[i] + vel[i];
    if ( y[i] > height + tam[i]/2 ) {
      reciclar( i );
      //x[i] = random( width );
      //y[i] = -100;
      //tam[i] = random( 10, 25 );
      //vel[i] = random( 1, 3 );
      //relleno[i] = color( 255, random(50, 150) );
    }
  }

  //dibujar
  for ( int mivariablemaslargadelmundoparafor = 0; mivariablemaslargadelmundoparafor < c; mivariablemaslargadelmundoparafor++ ) {
    fill( relleno[mivariablemaslargadelmundoparafor] );
    ellipse( x[mivariablemaslargadelmundoparafor], y[mivariablemaslargadelmundoparafor], tam[mivariablemaslargadelmundoparafor], tam[mivariablemaslargadelmundoparafor] );
  }
}

void reciclar( int a ) {  //funcion con parametros
  x[a] = random( width );
  y[a] = -100;
  tam[a] = random( 10, 25 );
  vel[a] = random( 1, 3 );
  relleno[a] = color( 255, random(50, 150) );
}
