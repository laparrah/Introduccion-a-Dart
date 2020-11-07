/**
 * Clases Abstractas
 * 
 * Una clase abstracta no puede ser instanciada, es decir, no se puede crear objetos, aunque puede ser extendida.
 * Un método abstracto es estructurado, pero no definido, deberá ser sobrescrito (override) en el futuro.
 */

main(List<String> arguments) {
  Gerente gerente = Gerente()
    ..id = 1
    ..nombre = "José"
    ..salario = 200
    ..idSucursal = "Centro"
    ..trabajo()
    ..actividadAsignada()
    ..calcularPago();

  Vendedor vendedor = Vendedor()
    ..id = 2
    ..nombre = "Juan"
    ..salario = 100
    ..idDepartamento = "Abarrotes"
    ..trabajo()
    ..actividadAsignada()
    ..calcularPago();
}

abstract class Empleado {
  var id, nombre, salario;

  void calcularPago() {
    print("El salario del empleado es ${salario * 15}");
  }

  void actividadAsignada();
}

class Gerente extends Empleado {
  var idSucursal;

  void trabajo() {
    print("Hola, soy el gerente de la sucursal $idSucursal");
  }

  @override
  void actividadAsignada() {
    print("Mi tarea es dirigir la sucursal");
  }

  @override
  void calcularPago() {
    print("El salario del empleado es ${salario * 20}");
  }
}

class Vendedor extends Empleado {
  var idDepartamento;

  void trabajo() {
    print("Hola soy el vendedor de $idDepartamento");
  }

  @override
  void actividadAsignada() {
    print("Mi tarea es vender productos");
  }
}
