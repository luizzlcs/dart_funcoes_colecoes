import 'dart:async';

void main() {
  // O mapa é uma representação de chave e valor.
  final paciente = <String, String>{
    'nome': 'Luiz Carlo',
    'curso': 'Academia do Flutter'
  };

  // O mapa pode ser nulo mas se for criado deve conter a chave e o valor não nulos.
  Map<String, String>? pacienteNulsafety = null;

  // O mapa e o valor não podem ser nulos, mas a chave pode ser nula.
  var pacienteNulsafety2 = {
    null: 'Luiz',
  };

  // O mapa e o chave não podem ser nulos, mas o valor pode ser nulo.
  var pacienteNulsafety3 = {
    'nome': null,
  };

  //Adicionando valores ao mapa

  var produtos = <String, String>{};

  produtos.putIfAbsent('Prod1', () => 'Pipoca');
  produtos.putIfAbsent('Prod2', () => 'Abacate');
  produtos.putIfAbsent('Prod3', () => 'Bolacha 3 de maio');

  print(produtos);

  // Alterando um intém do mapa

  produtos.update('Prod3', (value) => 'Pipoca de Milho');

  // ifAbsent » Caso a chave não exista passa o valor '10'
  produtos.update('preco', (value) => '10', ifAbsent: () => '10');
  print(produtos);

  print('-------------- RECUPERANDO VALOR ------------------------');
  // Recuperando o valor;

  print('O produto é: ${produtos['Prod2']}');

  print('-------------- PRINT COM FOREACH ------------------------');
  // Pecorrendo toda a lista de produtos

  produtos.forEach((key, value) {
    print('Chave: $key - $value');
  });

  // Pecorrendo a lista com For In

  print('----------- PRINT COM FOR IN -----------------');

  for (var item in produtos.entries) {
    print('Chave: ${item.key}:   ${item.value}');
  }

  print('----------- SOMENTE CHAVES -----------------');
  for (var chaves in produtos.entries) {
    print(chaves.key);
  }

  print('----------- SOMENTE VALORES -----------------');
  for (var nome in produtos.entries) {
    print(nome.value);
  }

  print('----------- LISTAR TODO O MAP -----------------');
  var novoMapaProdutos = produtos.map((key, value) {
    return MapEntry(key, value.toUpperCase());
  });

  print(novoMapaProdutos);

  print('----------- PECORRE O MAP E PASSA PARA MAIÚSCULO -----------------');
  novoMapaProdutos.forEach((key, value) {
    print('${value.toUpperCase()}');
  });

  // Mapa dentro de outro mapa

  var mapa = <String, Object>{
    'nome': 'Rodirgo Rahman',
    'curso': [
      {
        'nome': 'Academia do Flutter',
        'descricao': 'O melhor curso do Brasil',
      },

      {
        'nome': 'Arquiteto Flutter',
        'descricao': 'O melhor curso do Brasil'
        
      }

    ]
  };
}
