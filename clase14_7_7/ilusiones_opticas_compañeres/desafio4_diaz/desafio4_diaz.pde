//tip: para un efecto más flashero, deslizar el mouse desde el 0, 0 hasta el 600, 600 en diagonal

int cant;
int tam;

void setup() {
  size(600, 600); 

  cant = width/12;
  tam = 40;
}


void draw() {
  background(0);

  for ( int g = 0; g < cant ; g ++ ){
    strokeWeight(3);
    stroke(#F230FC); 
      noFill(); 
      ellipse( width/2, height/2, mouseX*g, mouseY*g);
  }



  for ( int c = 0; c < cant; c++) {

    strokeWeight(3); 
      stroke(#30FCFB); 
      noFill(); 
      ellipse( width/2, height/2, mouseX*c*2, mouseY*c*2);
  }
}
