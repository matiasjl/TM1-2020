
// VARIABLES DE USUARIO + OPERACIONES MATEMATICAS

//1) D E C L A R A C I O N
//tipo nombre = valorInicial ;
int posXrojo = 0;
int posXazul = 400;        //int = valores numericos enteros
float tamCuadrado = 300;   //float = valores numericos con decimales

void setup(){  //configuracion, se ejecuta una sola vez al iniciar el programa
  size(400, 400 );
  colorMode( RGB );  //no es necesario declarar RGB porque es por defecto
  rectMode( CENTER );
  noStroke();
  
  //defino cantidad de FRAMES por SEGUNDO del DRAW
  frameRate( 30 );  //60 por defecto
}

void draw(){  //dibujar, se ejecuta (por defecto) 60 fps -frames per second-
  //defino un color de fondo: importante para no dejar rastro
  background( 255 );
  
  //circulo rojo
  fill( 255, 0, 0 );
  //3) U T I L I Z A C I O N 
  ellipse( posXrojo, 0, 300, 300 );
    
  //circulo azul
  fill( 0, 0, 255 );
  ellipse( posXazul, 400, 300, 300 );

  //cuadrado verde
  fill( 0, 255, 0, 180 );
  rect( width/2, height/2, tamCuadrado, tamCuadrado );

  //2) A S I G N A C I O N  
  //ACTUALIZAR LOS VALORES DE MIS VARIABLES: Operaciones matemáticas
  posXrojo = posXrojo + 1;  //posXrojo += 1;
  posXazul = posXazul - 2;
  tamCuadrado = tamCuadrado - 0.5;
  
  //debug en consola
  println( tamCuadrado );
}
