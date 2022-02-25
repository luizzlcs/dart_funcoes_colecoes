void main() {
  print('Soma de dois números com Arrow: ${somaInteiros(15, 8)}');
  // Partes:
  // Tipo de retorno;
  // Nome;
  // 3 Parâmetros: normais, nomeados e opcionais.

  var nome = '';
  var idade = 1;
  // ignore: prefer_function_declarations_over_variables
  var funcaoQualquer = () {
    return 'Invocando função anônima » 23/02/2022';
  };
  
  // Invocando a função
  print(funcaoQualquer());

  // Verificando a tipagem
  print(nome.runtimeType);
  print(idade.runtimeType);
  print(funcaoQualquer);

  // Função que recebe uma outra função como parâmetro.
  chamarUmaFuncaoDeUmParametro(
      (nome) => {nome == null ? print(nome) : print("nome não valido")});
}

// Função com Arrow Function, característica: o corpo da função possui uma única linha.
int somaInteiros(int n1, int n2) => n1 + n2;


void chamarUmaFuncaoDeUmParametro(Function(String nome) funcaoQueRecebeONome) {
  var calculo = 1 + 1;
  var nomeCompleto = 'Rodrigo Rahman';
  funcaoQueRecebeONome(nomeCompleto);
}

typedef funcaoQueRecebeNome = void Function(String nome);

// No Dart, você pode criar um alias de tipo para aludir a um tipo usando palavras-chave typedef

//Sobre: https://medium.flutterdevs.com/explore-typedef-in-dart-fluter-6dd102fdf5f9
