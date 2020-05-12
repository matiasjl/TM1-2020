
//IMPORTANTE: los nombres de las variables
//son elección propia, casi cualquier cosa vale
//POR CONVENCIÓN:
//-empiezan con letra minuscula
//-nunca con un numero
//-son descriptivos a su funcion

//variable: declaracion
//tipo nombre;
String miTexto;
float posY;

//declaracion + asignacion
char t = 'T';
char e = 'E';
char c = 'C';
char n = 'N';
char o = 'O';
char u1 = '1';  //nombre variable no puede empezar con numero

void setup() {
  size( 400, 400 );

  //variable: asignacion
  miTexto = "Tecno1";
  posY = -100;

  //funciones que afectan a text()
  textSize( 48 );
  textAlign( CENTER, CENTER );
}

void draw() {
  background( 0 );
  fill( 200 );

  //ANIMACION PALABRA
  //variable: utilizacion
  text( miTexto, posY, height/2 );
  
  //ANIMACION LETRAS
  text( t, 100, posY * 1.0 );
  text( e, 130, posY * 1.2 );
  text( c, 160, posY * 1.4 );
  text( n, 190, posY * 1.6 );
  text( o, 220, posY * 1.8 );
  text( u1, 250, posY * 2.0 );
  
  //variable: actualizar el valor
  posY = posY + 1.0;
  println( posY );
}
