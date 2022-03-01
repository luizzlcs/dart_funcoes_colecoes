// Outra forma de fazer o imort é utilizar package, mapear toda a pasta lib
//import 'package:dart_funcoes_colecoes/7_imports/somas/soma.dart';
import 'nova_soma/soma.dart' as nova_soma; // Use alias quando houver um arquivo com nome de funções semelhantes
import 'somas/soma.dart' as soma;

void main() {
  var somaTotalInteiros = nova_soma.somaDoisNumerosInteiros(25, 35); // especifique a alias antes da função, para dizer qual arquivo da qual será aplicado a função.

  var somaTotalDouble = soma.somaDoisNumerosDouble(10.8, 25.75);

  print(
      'Soma de inteiros: $somaTotalInteiros\nSoma de double: $somaTotalDouble');
}
