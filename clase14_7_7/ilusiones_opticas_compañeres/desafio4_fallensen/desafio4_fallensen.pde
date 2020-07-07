//clara fallesen
//circulos lumiosos y cuadrados oscuros :)

int cant, tam;
void setup() {
  size(600, 600);
  colorMode(HSB, 360, 100, 100);
  
  cant=20;
  tam=width/cant;
}

void draw() {
  background(0);
  noFill();
  strokeWeight(5);
  for (int t=5; t< width; t=t+20) {
    float dist=dist(t+t*0.1, t+t*0.1, mouseX, mouseY);
    float ilu= map(dist, 0, 100, 0, 100); 
    stroke(280, ilu, 100);
    ellipse(t, t, t, t);
    stroke(90, 100, ilu);
    rect(t, t, t, t);
  }
}
