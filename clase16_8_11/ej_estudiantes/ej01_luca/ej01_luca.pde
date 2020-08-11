
// 1. armar un array de 10 posiciones con 10 nombres 
// de compañeres e imprimir su contenido en la consola
// o mostrarlo en pantalla con la función text()

//Luca Galotto Viganoni

String[] nombres; 

void setup () {

  nombres = new String[10];

  nombres [0] = "Isabella";
  nombres [1] = "Luna";
  nombres [2] = "Juana";
  nombres [3] = "Nico";
  nombres [4] = "Denise";
  nombres [5] = "Martina";
  nombres [6] = "Melisa";
  nombres [7] = "Oriana";
  nombres [8] = "Santiago";
  nombres [9] = "Mariano";

  for (int i = 0; i < 10; i++) {
    println(nombres[i]);
  }
}
