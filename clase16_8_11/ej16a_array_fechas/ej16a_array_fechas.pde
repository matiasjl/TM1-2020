
//CON VARIABLES
//declarar y asignar
//int date0 = 1919;
//int date1 = 1940;
//int date2 = 1975;
//int date3 = 1976;
//int date4 = 1990;

//CON ARREGLOS
//declarar array
int[] date;
//declarar + crear + asignar array
//int[] date = { 1919, 1940, 1975, 1976, 1990 };

void setup(){
  
  //crear array con 5 lugares
  date = new int[5];
  
  //asignar valores a array
  date[0] = 1919;
  date[1] = 1940;
  date[2] = 1975;
  date[3] = 1976;
  date[4] = 1990;
  
  //usar array
  println( date );
  println();
  
  for( int i = 0 ; i < 5 ; i++ ){
    println( date[i] );
  }
}

void draw(){
}
