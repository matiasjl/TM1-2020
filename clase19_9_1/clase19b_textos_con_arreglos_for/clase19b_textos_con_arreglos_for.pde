
// arreglos de textos (dialogos, explicaciones, etc)

//declaro el arreglo y le doy dimensión
String[] misTextos = new String[4];
//contadot
int c = 0;

void setup(){
  size( 400, 400 );
  //textAlign( CENTER, TOP );
  
  //carga manual los datos en las diferentes posiciones
  //aclaracion: no uso for porque son distintos textos
  misTextos[0] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam blandit urna id ligula placerat, eget tincidunt purus lacinia. Sed eget dolor ut nisi viverra placerat eget vestibulum diam. Mauris tempor ligula ac convallis tincidunt. In eu neque ullamcorper, fringilla ipsum eget, blandit enim. Etiam dictum purus vitae lectus aliquam iaculis.";
  misTextos[1] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In posuere nisi eu augue accumsan convallis. Vivamus enim nisi, dapibus sed sapien in, efficitur imperdiet felis. Vivamus porta viverra convallis. Vivamus sed ultricies libero, eget sodales ligula. Ut semper bibendum odio vitae imperdiet. In eu elementum nisl. Nulla tempor vestibulum risus.";
  misTextos[2] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas nisi erat, vulputate in tristique vel, lacinia ultrices ante. Pellentesque mollis cursus justo, eget egestas orci facilisis ac. Pellentesque semper ornare.";
  misTextos[3] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis hendrerit viverra odio vel finibus. Praesent rutrum velit diam, in bibendum.";
  
}

void draw(){
  background( 255 );
  
  //uso for porque quiero mostrar todo el contenido de mi arreglo en la misma pantalla
  for( int i = 0 ; i < 4 ; i++ ){
    if( i%2 == 0 ){
      textAlign( LEFT, TOP );
      fill(0);
    }else{
      textAlign( RIGHT, TOP );
      fill( 100 );
    }
    text( misTextos[i], width/20, i * height/4 + height/10, width-width/10, height );
  }
  
}
