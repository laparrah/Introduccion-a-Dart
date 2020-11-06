/**
 * Getter y Setter son métodos especiales que proveen acceso
 * de lectura y escritura a las propiedades de un objeto
 * 
 * Existen dos tipos: por defecto y personalizados
 * 
 * Para declarar una variable privada, se debe escribir un guión bajo
 * antes del nombre de esta; esto solo funciona si la clase está 
 * en un archivo distinto del cual es llamada.
 */

import "empleado_gys.dart";

main(List<String> arguments) {
  Empleado emp = Empleado();
  emp.horasLaboradas = 42;

  //Interpolación en llaves debido a que todo lo que está después del punto
  //lo tomaría como parte de la cadena
  print("El trabajado laboró ${emp.horasLaboradas} días en la semana");
}
