/**
 * CICLO WHILE Y DO-WHILE
 * 
 * ¿Cuál es la diferencia? While evalúa y después ejecuta,
 * do-while se ejecuta una primera vez y después evalúa
 */

main(List<String> arguments) {
  int i = 0;

  print("\nwhile");
  while (i <= 10) {
    print("Valor actual: $i");
    i++;
  }

  i = 1;
  //Si i no se inicializa de nuevo, el do-while imprimirá el valor 11
  //a pesar de que no cumple la condición, ya que este evalúa al final
  print("\ndo-while");
  do {
    print("Valor actual: $i");
    i++;
  } while (i <= 10);
}
