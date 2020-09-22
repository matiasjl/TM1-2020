void setup() {
  size(1000, 600);
}


void draw() {
}


void snowman(float x, float y, float t) {
  strokeWeight(2);
  line(x-t/6, y, x-t/2, y-t/4);
  line(x+t/6, y, x+t/2, y-t/4);

  pushStyle();
  noStroke();
  fill(255);
  //cabeza
  circle(x, y-t/4, t/4);
  //cuerpo
  circle(x, y, t/3);
  //cuerpo2
  circle(x, y+t/4, t/2);
  //ojos
  fill(0);
  circle(x-t/15, y-t/4, t/50);
  circle(x+t/15, y-t/4, t/50);
  popStyle();
}


void mousePressed() {
  snowman(mouseX, mouseY, random(300) );
}
