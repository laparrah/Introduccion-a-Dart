/**
 * 
 * Parámetros requeridos, opcionales, posicionados, nombrados y por defecto
 * 
 */

main(List<String> arguments) {
  parametrosRequeridos(3, 200);
  parametrosOpcPosicionados(1);
  parametrosOpcNombrado(2, b: 28);
  parametrosOpcNombrado2(2, b: 300);
  parametrosOpcNombrado3(b: 500, a: 800);
}

//En los parámetros requeridos es obligatorio enviarlos todos,
//si se solicitan dos, dos datos deben ser enviados o de lo contrario
//enviará un error

void parametrosRequeridos(int a, b) {
  print("**** Parámetros Requeridos ****");
  print("Este es el parametro 1: $a");
  print("Este es el parametro 2: $b\n");
}

//En los parámetros opcionales posicionados, el parámetro en corchetes
//puede ser omitido sin marcar un error, el parámetro vacío se mostrará como null

void parametrosOpcPosicionados(int a, [b]) {
  print("**** Parámetros Opcionales Posicionados ****");
  print("Este es el parametro 1: $a");
  print("Este es el parametro 2: $b\n");
}

//En los parámetros opcionales nombrados
//puedes enviar los datos en cualquier orden, ya que se indica
//el parámetro antes de enviar el dato
void parametrosOpcNombrado(int a, {b}) {
  print("**** Parámetros Opcionales Posicionados ****");
  print("Este es el parametro 1: $a");
  print("Este es el parametro 2: $b\n");
}

void parametrosOpcNombrado2(int a, {b = 20}) {
  print("**** Parámetros Opcionales Posicionados ****");
  print("Este es el parametro 1: $a");
  print("Este es el parametro 2: $b\n");
}

void parametrosOpcNombrado3({int a, b}) {
  print("**** Parámetros Opcionales Posicionados ****");
  print("Este es el parametro 1: $a");
  print("Este es el parametro 2: $b\n");
}
