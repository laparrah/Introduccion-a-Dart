/** Funciones de sintaxis corta (Arrow) y Anónimas (Lambda)
 * 
 * Las funciones de sintaxis corta (Arrow) son declaradas en la misma línea 
 * y sólo pueden tener una expresión, misma que se declara después de una flecha (=>), 
 * por ejemplo:
 *      void functionName(int a, int b) => a + b;
 * 
 * Reglas:
 * No son permitidas las llaves {} ni la palabra [return]
 * Entre => y ; final sólo puede haber una sola expresión
 * 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * 
 * Las funciones anónimas, también conocidas como lambda o closures son similares 
 * a las nombradas pero con la diferencia de que no llevan nombre y suelen utilizarse
 * para realizar una acción dentro de otro proceso, por ejemplo:
        List list=["Rojo","Rosa","Verde"];
          list.forEach((val){
            print(val);
          });
        }
 * 
 * ¿cuándo utilizarse?
 * se utiliza para recorrer colecciones (list, set, map)
 * si es sólo una expresión puede utilizarse funciones arrow
 * 
 */

main(List<String> arguments) {
  funcionArrow(3, 4);

  var suma = funcionArrowRetorno(2, 5);
  print(suma);

  //función anónima
  List lista = ['morado', 'celeste', 'magenta'];

  lista.forEach((i) {
    print(i);
  });

  //función anónima con condicional
  lista.forEach((i) {
    if (i == 'celeste') {
      print(i);
    }
  });
}

void funcionArrow(int a, int b) => print('El resultado es ${a + b}');

//funcion arrow con retorno de valores
int funcionArrowRetorno(int a, int b) => a + b;
