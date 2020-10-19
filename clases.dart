/**
 * Clases y miembros
 * Una clase es el plano de un objeto, es la descripción del objeto, 
 * pero no el objeto, más bien es una plantilla para crear objetos.
 * 
 * Todo puede ser descrito como un objeto, con ciertas variables de instancia
 *  y métodos, por ejemplo casas, carros, personas, animales, etc.
 * 
 * Se le llama miembros de una clase a todas las variables de instancia
 *  y métodos que se existen dentro de ella y podemos acceder a ellos 
 * llamándolos desde un objeto.
 */

main(List<String> arguments) {
  Empleado empleado = new Empleado();

  empleado.id = 2;
  empleado.nombre = "José";

  Empleado empleadoo = Empleado(); //se puede omitir la palabra new
  Empleado empleado2 = Empleado() //uso de notación en cascada
    ..id = 2
    ..nombre = "Juan";

  if (empleado.cumplioHorario()) {
    empleado.trabajo();
  }

  /*
  if (empleado2.cumplioHorario()) {
    empleado2.trabajo();
  }
  */
  //Optimizando...
  empleado2.cumplioHorario() ? empleado2.trabajo() : print("Tiene falta");
}

class Empleado {
  var id, nombre;

  bool cumplioHorario() {
    return true;
  }

  void trabajo() {
    //Interpolando la variable nombre de la clase
    print("El empleado $nombre cumplió con su horario laboral");
  }
}
