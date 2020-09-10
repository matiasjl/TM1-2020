
// funcion sumar dos valores enteros
int suma( int a, int b ){
  int resultado = a + b ;
  return resultado;
}

// funcion multiplicar dos valores
float multiplicar( float a, float b ){
  return a * b;
}

// funcion que me devuelva true si mouse está en la mitad derecha de la pantalla
boolean estoyEnLaMitadDerechaDeLaPantalla(){
  if( mouseX > width / 2 ){
    return true;
  }else{
    return false;
  }
}
