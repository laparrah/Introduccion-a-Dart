/* Colecciones: SET y LIST
*
* Las colecciones son objetos de tipo estructuras de datos que almacenan diversos elementos, 
* existen 2 tipos de colecciones, las listas y los sets.
* 
* En Dart los arreglos son Objetos ordenados de tipo List los cuales almacenan con un índice
* a cada uno de los elementos (index 0), mientras que los sets son colecciones que contiene 
* valores únicos (no se pueden repetir) no ordenados (no se pueden recuperar mediante índices).
*
* Una lista permitirá agregar los elementos que se desees, mientras que un set 
* no permitirá volver a agregar un valor ya existente, pero tampoco mandará un error.
*/

main(List<String> arguments) {
  /* ****    Colección LIST     ****** */

  print(r'/* ****    Colección LIST     ****** */');
  List<String> lista;

  lista = ['objeto1', 'objeto2']; //añadiendo elementos/contenido a la colección

  lista.add('objeto3'); //añadiendo un nuevo elemento a la colección
  print(lista);

  //Eliminando el último elemento de la colección
  lista.removeLast();
  print(lista);

  // Añadiendo una lista a otra
  List<String> lista2 = ['L2 objeto 5', 'L2 objeto6'];
  lista.addAll(lista2);
  print(lista);

  // Removiendo elementos por posiciones
  lista.removeAt(2);
  print(lista);

  /* ****    Colección SET     ****** */
  print('\n' r'/* ****    Colección SET     ****** */');

  Set set1;
  print(set1); // imprime un nulo

  //Añadiendo elementos a la colección
  set1 = Set.from(['Noah', 'Martha', 'Adan', 'Jonas', 'Ulrich']);
  print(set1);

  // Añadiendo un nuevo elemento a la colección
  set1.add('Egon');
  print(set1);

  // Removiendo un elemento del SET
  set1.remove('Adan'); // A comparación de un List, en un set se remueven
  print(set1); // elementos por nombre no por posición
}
