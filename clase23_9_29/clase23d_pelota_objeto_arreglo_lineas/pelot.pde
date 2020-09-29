class Pelota {
  float x, y;
  color pecol;
  float diam;
  float dx= 6.8;
  float dy=1.8;

  Pelota(float diam1, color c) {
    x= random(width);
    y= random(height);
    diam=diam1;
    pecol=c;
  }
  
  void dib2( Pelota[] a ){
    //recorro el arreglo de Pelora que paso como parametro
    for( int i = 0; i < a.length; i++ ){
      //consulta la distancia entre mi Pelota y cada una del resto
      float d = dist( x, y,  a[i].x, a[i].y );
      //consulto si los circulos se tocan
      boolean seTocan = d < diam;
      //en caso afirmativo, dibujo una linea entre ellas
      if( seTocan ){
        stroke( d );
        line( x, y,  a[i].x, a[i].y );
      }
    }
  }

  void dib() {
    noStroke();
    fill(pecol);
    ellipse(x, y, diam*2, diam*2);
  }
  void move() {
    x=x+dx;
    y=y+dy;
  }
  void reb() {
    if (x> (width -diam)) {  //derecha
      x=width-diam;
      dx=-dx;
    } else if (x<diam) {  //izquierda
      x=diam;
      dx=-dx;
    }
    if (y >(height - diam)) {  //abajo
      y= height -diam;
      dy=-dy;
    } else if (y< diam) {  //arriba
      y=diam;
      dy=-dy;  //bug
    }
  }
}
