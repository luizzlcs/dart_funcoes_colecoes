void main() {
  var cor = Cores.Vinho;
  var cor2 = Cores.Branco;

  if (Cores.Amarelo == Cores.Amarelo) {
    print('Com certeza');
  } else {
    print('Não senhor!');
  }

  print(Cores.Azul.name); // Imprimindo a propriedade azul

  print('----- Imprimindo o enum e a cor -----');
  var corAzul215 = Cores.values.byName('Azul');
  print(corAzul215);

  print(
      '----- Cria um map com chave númeradas e valores que são as cores. -----');
  var coresMap = Cores.values.asMap();
  print(coresMap);

  print('----- Cria um map e coloca o valor com chave. -----');
  var coresNameMap = Cores.values.asNameMap();
  print(coresNameMap);
 
 print('----- IMPRIMI O ENUM E O VALOR     -----');
  var corAzulPeloMap = coresNameMap['Amarelo'];
  print(corAzulPeloMap);
}

// Criando enums:

enum Cores { Azul, Verde, Branco, Vermelho, Preto, Amarelo, Roxo, Vinho }
