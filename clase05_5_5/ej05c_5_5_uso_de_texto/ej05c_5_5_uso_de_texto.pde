
// USO DE TEXTO

//VARIABLE DE TIPO STRING: cadena de caracteres
//1) D E C L A R A C I O N
String comision;

void setup() {
  size( 400, 400 );
  
  //2) A S I G N A C I O N  
  comision = "Comisión 2 Matias";
}

void draw() {
  background( 255 );
  stroke( 255, 0, 0 );
  line( width/2, 0, width/2, height );
  line( 0, height/2, width, height/2 );

  //funcion para escribir texto
  //text( "eltexto", x, y );
  //textSize( tamanio );
  //textAlign( alineacionHorizontal, alineacionVertical );
    //alineacionHorizontal: LEFT, CENTER, or RIGHT
    //alineacionVertical: TOP, BOTTOM, CENTER, or BASELINE
  textAlign( CENTER, BOTTOM );

  fill( 0 );
  textSize( 48 );
  text( "Hola Tecno1!", 200, 200 );

  //3) U T I L I Z A C I O N 
  fill( 100 );
  textSize( 24 );
  text( comision, 200, 230 );
}
