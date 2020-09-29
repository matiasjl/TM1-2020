
//declaro un objeto de la clase Copo
Copo c;

void setup(){
  size( 400, 400 );
  
  //creo el objeto
  c = new Copo( -150, 6 );
}

void draw(){
  background( #00AAE4 );
  
  c.actualizar();
  c.dibujar( true );
  //c.reciclar();

}
