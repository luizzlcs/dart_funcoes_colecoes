void main() {
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  //! Baseado na lista acima.
  //! 1 - Remova os pacientes duplicados e apresente a nova lista

  var retornaPessoasNaoDuplicados = pessoas.toSet();
  tratandoDadosPessoas1(retornaPessoasNaoDuplicados);

  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas

  int m = 0;
  int f = 0;
  List<String> pessoasMasculino = [];
  List<String> pessoasFeminino = [];

  print('-' * 15);
  for (var item in retornaPessoasNaoDuplicados) {
    var dadosPessoas = item.split('|');
    dadosPessoas[0];
    dadosPessoas[2];

    if (dadosPessoas[2] == 'Masculino') {
      m++;
      pessoasMasculino.add(dadosPessoas[0]);
    } else {
      f++;
      pessoasFeminino.add(dadosPessoas[0]);
    }
  }

  print('-' * 25);
  print('QTD PESSOAS DO SEXO MASCULINO: $m');
  for (var item in pessoasMasculino) {
    print(item);
  }
  print('🏃' * 25);
  print('QTD PESSOAS DO SEXO FEMININO: $f');
  for (var item in pessoasFeminino) {
    print(item);
  }
  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  print(' PESSOAS MAIORES DE 18 ANOS');
  for (var item in retornaPessoasNaoDuplicados) {
    var dadosPessoas = item.split('|');
    var nomePessoas = dadosPessoas[0];
    var idadePessoa = int.parse(dadosPessoas[1]);

    if (idadePessoa > 18) {
      print('$nomePessoas - $idadePessoa');
    }
  }

  print('🏁 🏃');
  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.​

  pessoas.sort((pessoas1, pessoas2) {
    var dadosPessoas1 = pessoas1.split('|');
    var dadosPessoas2 = pessoas2.split('|');

    final idadePessoa1 = int.parse(dadosPessoas1[1]);
    final idadePessoa2 = int.parse(dadosPessoas2[1]);

    if (idadePessoa1 > idadePessoa2) {
      return 1;
    } else if (idadePessoa1 == idadePessoa2) {
      return 0;
    } else {
      return -1;
    }
  });

  print(pessoas.last);
}

tratandoDadosPessoas1(Set<String> nomeDaLista) {
  for (var item in nomeDaLista) {
    var dadosPessoas = item.split('|');
    print(dadosPessoas[0]);
  }
}
