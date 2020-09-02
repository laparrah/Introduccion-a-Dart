/** Declaración de funciones y la función Main()
 * Las funciones son una colección de declaraciones agrupadas para desarrollar 
 * una operación, éstas pueden ser llamadas y reutilizadas.
 * 
 * Una función tendrá un tipo (mismo que regresará al utilizarse), un nombre, 
 * argumentos e instrucciones y seguirá la siguiente estructura:
 *        type functionName([args]){
 *           //code
 *          return returnValue;
 *         }
 * main() es la función de alto nivel que define el inicio de la aplicación 
 * y sigue la siguiente estructura, recuerda que en web no se requieren los argumentos:
          void main(List<String> arguments) {
              //code
          }
  * Nota: En Dart las funciones también son objetos, así que las podemos asignar 
  * a una variable.
 */

main(List<String> arguments) {
  //Llamado a otra función para que pueda ejecutarse
  suma();

  //Llamando a otra función con parámetros
  sumaconParam(10, 4);

  //Llamando a una función con retorno de valores
  //en Dart las funciones también son objetos, por lo que se puede
  //asignar una función a una variable
  int retorno_valores = sumaconReturn(4, 5);
  print(retorno_valores);
}

void suma() {
  int a = 2, b = 3, suma;
  //suma = a + b;

  //print('$a+$b=$suma');
  print(a + b);
}

//función que recibe parámetros
void sumaconParam(int a, int b) {
  print(a + b);
}

//función con retorno de datos
// al retornar valores, ya no es una función void, debe asignarse
// el tipo de dato que regresará
int sumaconReturn(int a, int b) {
  return a + b; //si se omite el return, en main imprimirá un null
}
