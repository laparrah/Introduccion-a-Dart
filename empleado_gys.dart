//Getter y Setter

class Empleado {
  String nombre;
  double _horas;

  /*
  //En el método set se está asignando un valor, en este caso a _horas
  void set horasLaboradas(double horas) {
    _horas = horas / 8;
  }

  //En el método get se está obteniendo el valor de _horas
  double get horasLaboradas {
    return _horas;
  } */

  //Optimización con funciones arrow
  void set horasLaboradas(double horas) => _horas = horas / 8;

  double get horasLaboradas => _horas;
}
