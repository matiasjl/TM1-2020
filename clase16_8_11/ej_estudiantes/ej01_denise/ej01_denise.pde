
// 1. armar un array de 10 posiciones con 10 nombres 
// de compañeres e imprimir su contenido en la consola
// o mostrarlo en pantalla con la función text()

// Denise

String[] nom;

void setup() {
  nom = new String[10];
  nom[0] ="Luna";
  nom[1] ="Alexis";
  nom[2] ="Angie";
  nom[3] ="clara";
  nom[4] ="Julian";
  nom[5] ="Marcos";
  nom[6] ="Lautaro";
  nom[7] ="LucaG";
  nom[8] ="IvanL";
  nom[9] ="Isaabella";

  println(nom);
  println();

  for (int i =0; i <10; i++) {
    println(nom[i]);
  }
}
