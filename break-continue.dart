/**
 * Break, Continue y Etiquetas
 * 
 * Break => detiene el trabajo de un ciclo por completo
 * Continue => detiene únicamente el bloque de código que continue después
 *              pero el ciclo continúa trabajando
 * Etiquetas => continuan la ejecución del código desde el punto definido 
 *              utilizando una etiqueta
 * 
 *   Se debe cuidar el uso de etiquetas para evitar código espagueti
 */

main(List<String> arguments) {
  //Uso de un for normal
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      //print("$i $j");
    }
  }

  //Uso de for con un break
  //imprimirá hasta 2 1 y después saltará a i=3
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      //print("$i $j");

      if (i == 2 && j == 1)
        break; //rompe el ciclo interno y continua ejecutando el externo
    }
  }

  //Uso de for con un continue
  //No imprime el 2 1 y continuará a j=2
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      if (i == 2 && j == 1)
        continue; //no imprimirá los valores de i,j que cumplen la condición
      //print("$i $j");
    }
  }

  //Uso de for con etiquetas
  forExterno:
  for (int i = 1; i <= 3; i++) {
    forInterno:
    for (int j = 1; j <= 3; j++) {
      //print("$i $j");
      if (i == 2 && j == 1) continue forInterno;
    }
  }

  forExterno:
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      if (i == 2 && j == 1) continue forExterno;
      //print("$i $j");
    }
  }

  forExterno:
  for (int i = 1; i <= 3; i++) {
    forInterno:
    for (int j = 1; j <= 3; j++) {
      if (i == 2 && j == 1) continue forInterno;
      print("$i $j");
    }
  }
}
