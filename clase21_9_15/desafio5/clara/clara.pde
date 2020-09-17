// carita(x,y, tamaño, "tu nombre");
void setup() {
  size(400, 400);
}
void draw() {
  background( 0 );
  carita(200, 200, mouseX, "Tecno1");
}

void carita (int x, int y, int tam, String nombre) {
  pushStyle();  //importante
  fill(#FAFF03);
  circle(x, y, tam);
  fill(0);
  ellipse(x, y+tam/10, tam/1.5, tam/2);
  fill(#FAFF03);
  noStroke();
  ellipse(x, y+tam/20, tam/1.5, tam/2);
  fill(0);
  ellipse(x-tam/10, y-tam/6, tam/10, tam/5);
  ellipse(x+tam/10, y-tam/6, tam/10, tam/5);
  fill(255);
  textSize(tam/4);  //correccion tamaño texto
  textAlign(CENTER);
  text("HOLA \n"+nombre, x, y-tam/2-50);  //correcion salto de linea
  //text(nombre, x, y-tam/2-25);
  popStyle(); //importante
}
