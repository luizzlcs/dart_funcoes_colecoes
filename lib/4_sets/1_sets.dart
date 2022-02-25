void main() {
  var numerosLista = <int?>[];
  numerosLista.add(1);
  numerosLista.add(2);
  numerosLista.add(3);
  numerosLista.add(3);
  numerosLista.add(null);
  numerosLista.add(1);
  numerosLista.add(2);

  print(numerosLista);
// O set não imprime os valores duplicados.
  var numerosSet = <int?>{};
  numerosSet.add(1);
  numerosSet.add(2);
  numerosSet.add(3);
  numerosSet.add(3);
  numerosSet.add(null);
  numerosSet.add(1);
  numerosSet.add(2);

  print('Lista de set: $numerosSet');
  // Transformando List em Set .toSet()
  print('Lista transformada em set: ${numerosLista.toSet()}');

  numerosSet.forEach((print));

  // Retorna somente o que é diferente da lista em comparação
  var numeros1 = {1, 2, 3, 4, 5, 6};
  var numeros2 = {0, 7, 3, 8, 5, 6};

  print('Lista Numeros1: $numeros1');
  print('Lista Numeros1: $numeros2');
  print('--------------------------------------------------');
  print('Dif lista 1 para lista 2: ${numeros1.difference(numeros2)}');
  print('Dif lista 2 para lista 1:${numeros2.difference(numeros1)}');

  // Verifica o que contém em ambas as listas.
  print(
      'Contém em ambas as listas: ${numeros1.intersection(numeros2)}'); // Obs. Não retorna os duplicados

  // União de duas listas

  print(
      'União de duas listas: ${numeros1.union(numeros2)}'); // Obs. Não retorna os duplicados.

  //Lookup - Retorna valor passado no parâmetro.

  print('Lookup: ${numeros1.lookup(5)}');

 
}
