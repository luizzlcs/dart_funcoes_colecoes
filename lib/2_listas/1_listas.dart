void main() {
  var numeros = List.generate(11, (Index) => Index);

  // Pegando os elementos da lista com o forEach
  print('----- IMPRIMINDO COM forEach -----');
  numeros.forEach((element) {
    print(element);
  });

  // e também assim
  print('----- IMPRIMINDO COM forEach RESUMIDO -----');
  numeros.forEach(print);

  // Ou ainda assim
  print('----- IMPRIMINDO COM forEach -----');
  numeros.forEach(printAcademia);

  // Expanded
  // Array BiDimensional

  var lista = [
    [1, 2],
    [3, 4],
  ];

  print('----- IMPRIMINDO ARRAY BIDIMENSIONAL -----');
  print(lista[0][0]);
  print(lista[1][1]);

  var novaLista = [...lista[0], ...lista[1]];
  
  print('----- ADICIONANDO A LISTA COM OPERADOR SPREAD -----');
  print('Operador Spread: $novaLista');

  // A forma elegante de se fazer é usando o expanded, aciona todos os elementos do array bidimensional.

  var novaLista2 = lista.expand((numeros) => numeros);
  print('----- USANDO O EXPAND -----');
  print('Usando o expand: ${novaLista2.toList()}');
  // Sobre o Spread: http://www.macoratti.net/20/08/dart_spread1.htm

  //Any - Verifica se o elemento está na lista.

  var listaNomes = ['Maria', 'Paulo', 'Lucas'];
  if (listaNomes.any((nome) => nome == 'Lucas')) {
    print('Eu estou aqui!');
  } else {
    print('Não estou aqui');
  }

  // every, verifica se cada nome da lista contém a requisição solicitada
  var listaNomes2 = ['Maria', 'Paulo', 'Lucas2'];

  if (listaNomes2.every((nomes) => nomes.contains('a'))) {
    print('Todos os nomes contém a requisição \'O\'');
  } else {
    print('Todos os nomes NÃO contém a requisição \'O\'');
  }
  // Sort --> Coloca todos os itens da lista em ordem

  var listNumeros1 = [15, 10, 5, 55, 30, 18, 20, 1];
  listNumeros1.sort();
  print(listNumeros1);

  // Ordenado lista de pacientes por idade
  final listaPacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  listaPacientes.sort((pacientes1, pacientes2) {
    final dadosPacientes1 = pacientes1.split('|');
    final dadosPacientes2 = pacientes2.split('|');

    final idadePaciente1 = int.parse(dadosPacientes1[1]);
    final idadePaciente2 = int.parse(dadosPacientes2[1]);

    if (idadePaciente1 > idadePaciente2) {
      return 1;
    } else if (idadePaciente1 == idadePaciente2) {
      return 0;
    } else {
      return -1;
    }
  });
  print('-----ORDENANDO LISTA -----');
  print('Ordenando com Sort: $listaPacientes');

  // Ordenando lista com Utilizando o CompareTo

  final listaPacientes2 = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];
  listaPacientes2.sort((pacientes1, pacientes2) {
    final dadosPacientes1 = pacientes1.split('|');
    final dadosPacientes2 = pacientes2.split('|');

    final idadePaciente1 = int.parse(dadosPacientes1[1]);
    final idadePaciente2 = int.parse(dadosPacientes2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
  });
  print('-----ORDENANDO LISTA 2 -----');
  print('Ordenando com Sort e CompareTo: $listaPacientes2');
}

//passando funcão com parâmetro.
void printAcademia(Object valor) {
  print('Funcao $valor');
}
