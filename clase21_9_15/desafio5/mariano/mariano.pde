PImage arbol;

void setup() {
  rectMode(CENTER);
  background(0,100,0);
  size(1200, 500);
  arbol = loadImage("arbol.png");
  surface.setResizable(true);
}

//correccion: agrego parametro pimage para no usar una variable global
void arboles(int c, int tam, int tam2, PImage a ) {
  for (int i = 0; i < c; i++) {
    a.resize( int(random(tam,tam2)),int(random(tam,tam2)));
    image(arbol, mouseX+random(-200, 100), mouseY+random(-50, 20));
  }
}

void draw(){
}

void mousePressed() {

  //arboles(5, 75, 150);  //propuesta original
  
  //propuesta con pimage como parametro
  arboles(15, 100, 100, arbol);
}
