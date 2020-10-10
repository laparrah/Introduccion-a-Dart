/**
 * SWITCH-CASE
 * Trabaja de manera muy similar a un IF-ELSE en cascada
 * 
 * Reglas:
 *    > Se puede utilizar int, String y Enum para evaluar la condición
 *    > La cláusula case no puede quedar vacía, debe finalizar con un break
 *      también se puede utilizar continue, throw o return
 *    > De no caer en ningún caso, se utiliza default
 */

main(List<String> arguments) {
  var opcion = 2;

  switch (opcion) {
    case 1:
      print("Entró al primer caso");
      break;

    case 2:
      print("Entró al segundo caso");
      //Se utiliza Continue para hacer un tipo de seguimiento entre casos
      //ya no se incluye un break, solamenrte se indica la etiqueta del continue
      continue SiguienteCaso;

    case 3:
      print("Entró al tercer caso");
      break;

    SiguienteCaso:
    case 4:
      print("Entró al cuarto caso, caso de seguimiento");
      break;

    default:
      print("Entró al caso por default");
  }
}
