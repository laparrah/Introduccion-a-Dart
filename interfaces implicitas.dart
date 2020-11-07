/**
 * Interfaces implícitas
 * 
 * Una clase normal puede funcionar como una interfaz a esto de le llama interfaces implícitas, 
 * éstas se harán implementando múltiples clases utilizando las clases como una interfaz.
 * 
 * Para que la interfaz implícita sea descrita correctamente, la clase deberá de definir 
 * todos los miembros de las clases de las que va a implementar.
 * En Dart a esto se le conoce como mixings (multi herencias)
 * 
 * implements toma las propiedades de varias clases y se pueden utilizar en una
 */

main(List<String> arguments) {
  Gerente gerente = Gerente()
    ..id = 1
    ..nombre = "Jose"
    ..salario = 300
    ..idSucursal = "Centro"
    ..trabajo()
    ..calcularPago()
    ..puntual();

  Vendedor vendedor = Vendedor()
    ..id = 1
    ..nombre = "Juan"
    ..salario = 200
    ..idDepartamento = "Abarrotes"
    ..trabajo()
    ..calcularPago()
    ..puntual();
}

class Empleado {
  var id, nombre, salario;

  void calcularPago() {
    print("El salario del empleado es ${salario * 15}");
  }

  //void actividadAsignada();
}

class esPuntual {
  void puntual() {
    print("El empleado es puntual");
  }
}

class Gerente implements Empleado, esPuntual {
  var id, nombre, salario, idSucursal;

  void trabajo() {
    print("Hola, soy el gerente de la sucursal $idSucursal");
  }

  @override
  void calcularPago() {
    print("El salario del empleado es ${salario * 15 + 500}");
  }

  @override
  void puntual() {
    print("El empleado si es puntual");
  }
}

class Vendedor implements Empleado, esPuntual {
  var id, nombre, salario, idDepartamento;

  void trabajo() {
    print("Hola, soy el vendedor del departamento $idDepartamento");
  }

  @override
  void calcularPago() {
    print("El salario del empleado es ${salario * 15}");
  }

  @override
  void puntual() {
    print("El empleado no es puntual");
  }
}
