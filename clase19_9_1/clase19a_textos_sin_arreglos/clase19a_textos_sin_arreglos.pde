
// arreglos de textos (dialogos, explicaciones, etc)

String miTexto;

void setup(){
  size( 400, 400 );
  textAlign( CENTER, CENTER );
  
  miTexto = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam blandit urna id ligula placerat, eget tincidunt purus lacinia. Sed eget dolor ut nisi viverra placerat eget vestibulum diam. Mauris tempor ligula ac convallis tincidunt. In eu neque ullamcorper, fringilla ipsum eget, blandit enim. Etiam dictum purus vitae lectus aliquam iaculis.";

}

void draw(){
  background( 255 );
  
  fill( 0 );
  text( miTexto, width/20, 0, width-width/10, height );
  
}
