
// USO DE TEXTO

//VARIABLE DE TIPO STRING: cadena de caracteres
//1) D E C L A R A C I O N
String comision;
float tamanioTexto;

//declaro variable para la fuente
PFont miFuente;

void setup() {
  size( 400, 400 );
  
  //2) A S I G N A C I O N  
  comision = "Comisión 2 Matias";
  tamanioTexto = 0.0;
  
  //cargo la fuente de mi carpeta data en la variable
  miFuente = loadFont( "Marion-Bold-48.vlw" );
}

void draw() {
  background( 0 );
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
  //seleciono mi variable fuente
  textFont( miFuente );
  
  fill( 0, 100, 0 );
  textSize( tamanioTexto );
  text( "Hola Tecno1!", 200, 200 );

  //3) U T I L I Z A C I O N 
  fill( (frameCount/2) %255 );  //CUANDO EL FILL PASA 255, SE BUGUEA = %255 permite como reiniciar el ciclo (resto de una division)
  textSize( 24 );
  text( comision, 200, 230 );
  
  //actualizo valor variables
  tamanioTexto += 0.1;
}
