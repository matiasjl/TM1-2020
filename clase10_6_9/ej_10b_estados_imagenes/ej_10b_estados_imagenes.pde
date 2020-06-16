
//DIAGRAMA DE ESTADOS

String estado;

//DECLARACIÓN VARIABLES IMAGENES
PImage d1, d2, d3;
PImage puerta, vacaciones;

void setup(){
  size( 600, 400 );
  
  estado = "montaña";
  
  //CARGA DE IMAGENES SIEMPRE EN SETUP
  d1 = loadImage( "d1.jpg" );
  d2 = loadImage( "d2.jpg" );
  d3 = loadImage( "d3.jpg" );
  puerta = loadImage( "puerta.png" );
  vacaciones = loadImage( "vacaciones.jpg" );
  
}

void draw(){
  //ciclo if para manejar estados
  if( estado.equals("vacaciones") ){
    image( vacaciones, 0, 0, 600, 400 );
  
  }else if ( estado.equals("puertas") ){
    //puerta1
    image( puerta, 50, 170, 100, 200 );
    
    //puerta2
    image( puerta, 250, 170, 100, 200 );
    
    //puerta3
    image( puerta, 450, 170, 100, 200 );
    
    
  }else if ( estado.equals("montaña") ){
    image( d1, 0, 0 );

  }else if ( estado.equals("campo") ){
    image( d2, 0, 0, 600, 400 );
    
  }else if ( estado.equals("desconocido") ){
    image( d3, 0, 0, 600, 400 );
    
  }
  
}

void keyPressed(){


}

void mousePressed(){


}
