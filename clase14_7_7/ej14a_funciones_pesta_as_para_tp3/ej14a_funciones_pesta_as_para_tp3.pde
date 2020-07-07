
// ejemplo funciones y pestañas
// TIP: CTRL + T e

String estado;

void setup() {
  size( 800, 600 ); 
  textAlign( CENTER, CENTER );
  textSize( 48 ); 
  estado = "menu";
}

void draw() {
  background( 100 );  // diagrama de estados ---------------------------
  if ( estado.equals("menu") ) {
    //llamo a la funcion: ejecuta código que tiene (como un acceso directo)
    contenidoPantallaMenu();
  } else if ( estado.equals("pantalla1") ) {
    //acá podría ir código u otra función
  } else if ( estado.equals("final1") ) {
    //idem anterior
  } //etc
}
