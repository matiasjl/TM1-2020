
// LOGICA DE ESTADOS con CONDICIONALES
// else if(...) = sino si( condicion )

int estado;
//String estado;

void setup(){
  size( 400, 400 );
  textSize( 30 );
  textAlign( CENTER );
  
  //----------!!!!!!
  estado = 0;
  //----------!!!!!!
}

void draw(){
  //-----------------------------------------------pantallas 
  //--------------------------------------------------------
  if( estado == 0 ){
    //0.menu
    background( 200 );
    fill( 0 );
    text( "menú", width/2, height/2 );
  //--------------------------------------------------------
  }else if( estado == 1 ){
    //1.juego
    noStroke();
    fill( 0, 50 );
    ellipse( random(width), random(height), 20, 20 );
  //--------------------------------------------------------
  }else if( estado == 2 ){
    //2.creditos  
    background( 50 );
    fill( 255 );
    text( "créditos", width/2, height/2 );
  }
  //--------------------------------------------------------

}

void keyPressed(){
  //paso de estado con barra espaciadora
  if( key == ' ' )
    estado = estado + 1;
  
  //si llegue al 3, reinicio ciclo estados
  if( estado == 3 )
    estado = 0;
    
  //imprimo valor de estado en consola   
  println( "estado: " + estado );
}
