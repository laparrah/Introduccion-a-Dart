/**
 * 
 * IF-ELSE
 * 
 * Operadores utilizados:
 *    Operadores de igualdad y relacional como:
 *          == , != , > , < , >= , <=
 *    Operadores lógicos como:
 *          !expr, || , &&
 * 
 * 
 * Expresiones condicionales
 *  Para evaluar una expresión y si esta es null utilizará otra
 *  en Dart se usa el operador ??
 *      expr1 ?? expr2  => si al evaluar expr1 es null, entonces se evalua expr2
 * 
 * Las expresiones condicionales pueden utilizarse con variables:
 *      var adulto = edad >= 18  ?
 *          'Si' : 'No' ;
 * 
 * y con funciones
 *      edad >= 18 ? Manejar():
 *          prohibirManejar();
 */

main(List<String> arguments) {
  var edad = 18;

  //Usando IF-ELSE en cascada
  if (edad == 18 || edad > 18 && edad < 100) {
    print("Eres mayor de edad");
  } else if (edad < 18 && edad >= 13) {
    print("Eres un adolescente");
  } else if (edad < 13) {
    print("Eres un niño");
  } else if (edad >= 100) {
    print("¿Dónde encontraste la fuente de la eterna juventud?");
  }

  //Usando expresiones condicionales
  var acceso = edad == 18 ? 'Correcto' : 'Incorrecto';
  print("El usuario tiene acceso $acceso");

  //Expresiones condicionales con un valor null
  var nombre = "Batman";
  print(nombre ?? 'invitado');
}
