boolean btnZona( float x, float y, float r ){
  float d = dist(mouseX, mouseY, x, y );
  if( d < r ){
    return true;
  }else{
    return false;
  }
}

color btnUpdate(float x, float y, float r){
  //actualizar estado boton
  if( btnZona(x, y, r) ){ 
    return color( 255, 0, 0 );
  }else{
    return color( 100 );
  }
}

void btnDisplay( float x, float y, float r ){
  //dibujar mi boton
  pushStyle();
  fill( btnUpdate(x, y, r) );
  noStroke();
  circle( x, y, r*2 );
  popStyle();
}
