
//DIAGRAMA DE ESTADOS

String estado;

//DECLARACIÓN VARIABLES IMAGENES
PImage d1, d2, d3;
PImage puerta, vacaciones;

void setup(){
  size( 600, 400 );
  
  estado = "vacaciones";
  
  //CARGA DE IMAGENES SIEMPRE EN SETUP
  d1 = loadImage( "d1.jpg" );
  d2 = loadImage( "d2.jpg" );
  d3 = loadImage( "d3.jpg" );
  puerta = loadImage( "puerta.png" );
  vacaciones = loadImage( "vacaciones.jpg" );
  
  noStroke();
  textSize( 32 );
  textAlign( CENTER, CENTER );
}

void draw(){
  //ciclo if para manejar estados
  if( estado.equals("vacaciones") ){
    image( vacaciones, 0, 0, 600, 400 );
    fill( 0, 50 );
    rect( 40, 310, 520, 50 );
    fill( 255 );
    text( "Presione la barra espaciadora", width/2, 330 );
  
  }else if ( estado.equals("puertas") ){
    background( 50 );
    fill( 70 );
    rect( 0, 300, width, 100 ); 
    
    //puerta1
    tint( 150, 255, 255 );  //tint red
    image( puerta, 50, 170, 100, 200 );
    
    //puerta2
    tint( 255, 150, 255 );  //tint blue
    image( puerta, 250, 170, 100, 200 );
    
    //puerta3
    tint( 255, 255, 120 ); //tint green
    image( puerta, 450, 170, 100, 200 );
    
    tint( 255 );    
  }else if ( estado.equals("montaña") ){
    image( d1, 0, 0 );

  }else if ( estado.equals("campo") ){
    image( d2, 0, 0, 600, 400 );
    
  }else if ( estado.equals("desconocido") ){
    image( d3, 0, 0, 600, 400 );
    
  }
  
}

void keyPressed(){
  //CUANDO: presiono la barra espaciadora
  if( key == ' ' ){
    //CAMBIO de ESTADO: "vacaciones" -> "puertas"
    estado = "puertas";
  }
  
  //evaluo que estoy en alguna de las tres pantallas de destinos
  if( estado.equals("montaña") || estado.equals("campo") || estado.equals("desconocido") ){
    //CUANDO: presiono la tecla backspace
    if( keyCode == BACKSPACE ){
      //CAMBIO de ESTADO: "montaña" o "campo" o "desconocido" -> "vacaciones"
      estado = "vacaciones";
    }
  }
    
}

void mousePressed(){
  //CUANDO: hago clic sobre ZONA de la puerta1
  if( mouseX > 50 && mouseX < 50+100 && mouseY > 170 && mouseY < 170+200 ){
    //CAMBIO de ESTADO: "puertas" -> "d1"
    estado = "montaña";
  }
  //CUANDO: hago clic sobre ZONA de la puerta2
  if( mouseX > 250 && mouseX < 250+100 && mouseY > 170 && mouseY < 170+200 ){
    //CAMBIO de ESTADO: "puertas" -> "d2"
    estado = "campo";
  }
  //CUANDO: hago clic sobre ZONA de la puerta3
  if( mouseX > 450 && mouseX < 450+100 && mouseY > 170 && mouseY < 170+200 ){
    //CAMBIO de ESTADO: "puertas" -> "d3"
    estado = "desconocido";
  }
  

}
