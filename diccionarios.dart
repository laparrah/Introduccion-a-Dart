/* Diccionarios
*
* Los Maps, también llamadas Hash o Diccionarios 
* son objetos que tienen una asociación entre llaves y valores.
* 
*/
main(List<String> arguments) {
  Map<int, String> map1; //se define una llave tipo int y un valor String

  //Añadiendo elementos al map
  //llave valor
  map1 = {1: 'Azul', 2: 'Negro', 3: 'Blanco'};
  print(map1);

  // Añadiendo un nuevo elemento al diccionario
  map1[4] = 'Morado';
  print(map1);

  print('Tamaño del diccionario: ');
  print(map1.length);

  // Removiendo un elemento del diccionario por llave
  map1.remove(2);
  print(map1);

  //Para saber si el map está vacío o no
  print(map1.isEmpty);

  print('Tamaño del diccionario: ');
  print(map1.length);
}
