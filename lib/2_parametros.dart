// A função posui três caracteristica:
// 1 - Tipo do retorno;
// 2 - o nome dela;
// 3 - Os parâmetros que ela recebe.
void main() {
  // Parametros Obrigatórios por fefault
  print('A soma de 25 + 50 = ${somaInteiros(25, 50)}');

  // Parametros nomeados são nulables por default
  // Parametors nomeados podem ser promovidos para não non-null com checagem de null
  print('a soma de 9.5 + 9.8 é = ${somaDoubles(n1: 9.5, n2: 9.8)}');
  print(
      'a soma de 9.5 + 9.8 é = ${somaDoubles(n2: 9.8, n1: 9.5)}'); // fora da ordem
  print(
      'a soma de 9.5 + 9.8 é = ${somaDoubles(n2: 9.8)}'); // Um parâmetro não foi passado
  print(
      'A soma de 5.2 + 16.8 é = ${somaDoublesObrigatorios(n1: 5.2, n2: 16.8)}'); // posso passar na ordem que quiser os parametro

  print(
      'A soma de n1 = null e n2 = a 9.8 é = ${somaDoublesObrigatorios2(n1: null, n2: 12)}');

  print('Retorna o valor dafault: ${somaDoublesObrigatoriosDefault(n2: 9.4)}');

  // Parametro Opcional

  print('Soma de inteiros Opcionais: ${somaInteiroOpcional(5)}');

  // misturando tudo: parametros normais com parametros obrigatórios normais.

  parametrosNormaisComNomeados('84 9 8836-9729', nome: 'Luiz Carlos', idade: 36);

}

int somaInteiros(int n1, int n2) {
  return n1 + n2;
}

double? somaDoubles({double? n1, double? n2}) {
  if (n1 != null && n2 != null) {
    return n1 + n2;
  }
  return 0.0;
}

double? somaDoublesObrigatorios({required double n1, required double n2}) {
  return n1 + n2;
}

double? somaDoublesObrigatorios2({required double? n1, required double n2}) {
  n1 ??= 0;

  // é o mesmo que
  // if(n1 == null){
  // return n1 = 0}

}

// Parametros default
double? somaDoublesObrigatoriosDefault({double n1 = 0, double n2 = 0}) {
  return n1 + n2;
}

int somaInteiroOpcional([int n1 = 0, int n2 = 0]) {
  return n1 + n2;
}
// minsturando tudo
// Os parametro opcionais e os nomeados precisam ser os últimos
parametrosNormaisComNomeados(String telefone, {required String nome, required int idade}){


}
