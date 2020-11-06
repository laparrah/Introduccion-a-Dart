/**
 * Herencia
 * 
 * En dart, todo es un objeto
 * 
 * La herencia permite adquirir las propiedades de una clase padre
 * La clase hijo entonces tiene las propiedades de la clase ‘Padre’ 
 * y además tiene sus propiedades propias, mismas que heredará a sus hijos.
 * 
 * Por ejemplo todas las clases heredan por defecto de la clase ‘Object’ 
 * ya que en Dart todo es un objeto, por lo tanto todas las clases de Dart 
 * comparten algunos miembros.
 */

main(List<String> arguments) {
  Vendedor vendedor = Vendedor()
    ..id = 1
    ..nombre = "Juan"
    ..sueldo = 200.0
    ..idCliente = "Cliente 1"
    ..trabajoAsignado()
    ..calcularPago();

  Gerente gerente = Gerente()
    ..id = 2
    ..nombre = "Julian"
    ..sueldo = 300.0
    ..idSucursal = "Sucursal Centro"
    ..trabajoAsignado()
    ..calcularPago();
}

class Empleado {
  var id, nombre;
  double sueldo;

  void calcularPago() {
    print("El salario del trabajador es de ${sueldo * 15} MXN");
  }
}

class Vendedor extends Empleado {
  String idCliente;

  void trabajoAsignado() {
    print("Hola, soy un vendedor...");
  }
}

class Gerente extends Empleado {
  String idSucursal;

  void trabajoAsignado() {
    print("Hola, soy el gerente...");
  }
}
