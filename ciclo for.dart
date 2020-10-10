/**
 * CICLO FOR
 */

main(List<String> arguments) {
  //for normal
  for (int i = 0; i <= 10; i++) {
    print(i);
  }

  //for para imprimir número pares
  for (int i = 0; i <= 10; i++) {
    if (i.isEven) {
      print(i);
    }
  }

  //for para imprimir el contenido de una lista
  List<String> lista = ["Azul", "Rojo", "Amarillo"];

  //en dart
  print("\nImprimiendo una lista en dart");
  for (String color in lista) {
    print(color);
  }

  //general
  print("\nImprimiendo una lista");
  for (int i = 0; i <= lista.length - 1; i++) {
    //length-1 => la lista comienza
    print(lista[i]); //en la posición 0
  }

  /* Usando propiedades de las listas en Dart */
  //usando una función de sintaxis corta arrow
  print("\nImprimiendo una lista con función arrow");
  lista.forEach((color) => print(color));

  //usando funciones anónimas
  print("\nImprimiendo una lista con funciones anónimas");
  lista.forEach((color) {
    print(color);
  });
}
