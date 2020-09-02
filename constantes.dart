/** Constantes (final y const)
 * Las variables de tipo const y final sólo pueden ser declaradas al mismo tiempo 
 * de ser creadas.
 * 
 * Si se requiere una constante a nivel de clase, estas deberán ser definidas 'static const'
 * 
 * La diferencia entre ellas radica en:
 * las tipo const son declaradas y alojadas en memoria al momento de
 * escribirlas en el código, por el contrario las tipo final serán
 * alojadas en memoria al utilizarla
 * 
 */

main(List<String> arguments) {
  //Constantide de tipo final
  final String nombre = "Martha";

  //Constante de tipo const
  const edad = 32;

  print(nombre);
  print(edad);
}
