
class Copo {

  //PROPIEDADES > variables
  float x, y;
  float tam;
  float vel;
  color relleno;
  PImage imagen;

  //CONSTRUCTOR > el "setup de la clase"
  Copo( float y_, int id ) {
    //inicializar las variables
    x = random( -40, width );
    y = y_;
    tam = random( 10, 40 );
    vel = random( 1, 3 );
    relleno = color( 255, random(50, 150) );

    //carga de las imagenes
    imagen = loadImage( "snowflake-" + id%50 + ".png" );  //1 = i
    //modificar el tamaño de las imágenes
    imagen.resize( int(tam), int(tam) );
    //invierto el color de las imagenes
    imagen = invertir( imagen );
  }

  //METODOS > funciones
  PImage invertir( PImage a ){
    a.filter( INVERT );
    return a;
  }
  
  void actualizar() {
    y = y + vel;
    if ( y > height + tam/2 ) {
      reciclar();
    }
  }

  void dibujar( boolean conImagen ) {
    if ( !conImagen ) {
      //con ellipse
      fill( relleno );
      ellipse( x, y, tam, tam );
    } else {
      //con imagen --> tint modifica la transparencia ;)
      tint( relleno );
      image( imagen, x, y );
    }
  }

  void reciclar() {
    x = random( width );
    y = -100;
    tam = random( 10, 25 );
    vel = random( 1, 3 );
    relleno = color( 255, random(50, 150) );
  }
}
