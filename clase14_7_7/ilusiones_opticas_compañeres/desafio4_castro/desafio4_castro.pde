float maxDistancia;

void setup() {
  size(300, 300);
}
void draw() {

  for (int i = 0; i < 300; i++) {
    float newHue = 400 - (i*1.2);
    stroke(newHue, 90, 110);
  }
  fill(0);
  maxDistancia = dist(0, 0, width, height);

  for (int i = 0; i <= width; i += 20) {
    for (int j = 0; j <= height; j += 20) {
      float mouseDist = dist(mouseX, mouseY, 
        i, j);
      float diametro = (mouseDist / maxDistancia)
        * 66.0;
      ellipse(i, j, diametro, diametro);
    }
  }
}
