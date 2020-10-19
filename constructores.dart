/**
 * Constructores
 * Los constructores se utilizan para inicializar una clase, son el primer método 
 * que se visualiza al instanciar un objeto.
 * 
 * Constructores por defecto
 * El constructor por defecto ya existe cuando se crea una clase y se define 
 * creando un método con el mismo nombre de la clase “nombreClase(){…}”
 * 
 * Constructores con parámetros
 * Los constructores con parámetros son aquellos que pueden definir 
 * los miembros mediante el constructor.
 * 
 * No puede existir en la misma clase un constructor por defecto y uno con parámetros.
 * 
 * Constructores nombrados
 * También podemos definir constructores con un nombre definido por nosotros
 *  y ésto hace que puedan existir múltiples constructores.
 */

main(List<String> arguments) {
  //Con constructor con parámetros
  Empleado empleado = Empleado(1, "José");
  Empleado empleado2 = Empleado(2, "María");
  Empleado empleado3 = Empleado.trabajo(3, "Pedro", false);

  /* con constructor por defecto
  empleado.id = 1; 
  empleado.nombre = "José";*/

  empleado.horarioOK();
  empleado2.horarioOK();

  empleado3.cumplioHorario()
      ? print("Cumplió su horario laboral")
      : print("No cumplió su horario laboral");
}

class Empleado {
  var id, nombre, trabajo;

  //Definiendo el constructor por defecto
  //Es lo primero que se ejecuta en el código
  /*Empleado() {
    print("Clase Empleado creada");
  }*/

  //Definiendo constructor con parámetros
  /*Empleado(int id, String nombre) {
    this.id = id;
    this.nombre = nombre;
  }*/

  //Optimizando...
  Empleado(this.id, this.nombre);

  //Definiendo constructor nombrado
  Empleado.trabajo(this.id, this.nombre, this.trabajo);

  bool cumplioHorario() {
    return trabajo;
  }

  void horarioOK() {
    //Interpolando la variable nombre de la clase
    print("El empleado $nombre cumplió con su horario laboral");
  }
}
