/* Variables: Números (int, double), String, booleanos
 * int ==> números enteros
 * double ==> números con punto decimal, 
 *        a partir de Dart 2.1, se puede dar un valor entero a un tipo double
 * String ==> cadenas de caracteres, siempre entre comillas ('' ó "")
 * boolean ==> true o false
 */

void main() {
  // una forma de definir variables
  /*
  var valInt; 
  var valDouble;
  var valString;
  var valBool;
  
  print(valInt); // en Dart todo es un objeto, regresa un null
  */

  int valInt;
  double valDouble;
  String valString; //con s en mayúscula
  bool valBool;

  //En Dart todo es un objeto, al no estar inicializadas retornará null
  print(valInt);
  print(valDouble);
  print(valString);
  print(valBool);

  //asignando valores a las variables
  valInt = 1;
  valDouble = 1; //Permite asignar número enteros
  valString = 'Hola Dart';
  valBool = true;

  print(valInt);
  print(valDouble);
  print(valString);
  print(valBool);

  dynamic
      valDinamico; //variable dinamica, puede cambiar de un tipo de dato a otro

  // Se inicializa como un int
  valDinamico = 2;
  print(valDinamico);

  // Se transforma a un String
  valDinamico = 'Hola, ahora soy un string';
  print(valDinamico);

  //Concatenación de cadenas de caracteres

  //Interpolación de variables
  print(
      '$valString, esto es una concatenación'); //Agregando una variable a un String

  String saludo = 'Hola soy Laura';
  //concatenando con un símbolo +
  print('$saludo, esto lo concatene' + ' usando un símbolo +');
  //concatenando con saltos de línea
  print('$saludo, esto los concatene'
      ' utilizando saltos de línea'
      ' y nadamás ');
  //triple comilla para una impresión literal
  print(''' Esta es una           impresión           que
  incluye espacios      y       saltos
  
          de línea''');
  // impresión raw, evita que los símbolos alteren el contenido del string
  print(r'& / ç*^!| \n Salto de línea'); //impresión literal
  print('& / ç*^!| \n Salto de línea'); //aplicará el salto de línea

  //imprime el booleano de acuerdo si la variable está vacía (false)
  print(valString.isEmpty);

  valString = "";
  //imprime el booleano de acuerdo si la variable está vacía (true)
  print(valString.isEmpty);
}
