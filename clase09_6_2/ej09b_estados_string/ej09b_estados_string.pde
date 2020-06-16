
// LOGICA DE ESTADOS con CONDICIONALES
// else if(...) = sino si( condicion )

String estado;

//creo variable para mi fuente personalizada
PFont miFuente;

void setup(){
  size( 400, 400 );
  textSize( 30 );
  textAlign( CENTER, CENTER );
  
  //----------!!!!!!
  estado = "menu";
  //----------!!!!!!
  
  //cargo la fuente previamenteguardada en la carpeta data
  miFuente = createFont("Minecrafter.Alt.ttf", 72);
  //selecciono la fuente creada
  textFont( miFuente );
}

void draw(){
  //-----------------------------------------------pantallas 
  //--------------------------------------------------------
  if( estado.equals("menu") ){
    //0.menu
    background( 200 );
    fill( 0 );
    text( "menu", width/2, height/2-50 );
    
    //CUANDO: botón rectangular
    fill( 150 );
    rect( 150, 250, 100, 50 );
    if( mouseX > 150 && mouseX < 150+100 && mouseY > 250 &&
        mouseY < 250+50 && mousePressed ){
          background( 200 );
          //ete aki the magic
          estado = "juego";
        }
  //--------------------------------------------------------
  }else if( estado.equals("juego") ){
    //1.juego
    noStroke();
    fill( 0, 50 );
    ellipse( random(width), random(height), 20, 20 );
    
    //CUANDO: por tiempo con frameCount
    println( frameCount/60 + " | " + frameCount );
    if( frameCount > 1200 ){
      estado = "creditos";
    }
  //--------------------------------------------------------
  }else if( estado.equals("creditos") ){
    //2.creditos  
    background( 50 );
    fill( 255 );
    text( "creditos", width/2, height/2 );
  }
  //--------------------------------------------------------

}

void mousePressed(){
  //clics
  fill( 255, 0, 0, 100 );
  noStroke();
  ellipse( mouseX, mouseY, 50, 50 );
}

void keyPressed(){
  //CUANDO: teclas para cambiar estados
  if( key == 'c' || key == 'C' ){
    estado = "creditos";
  }
}
