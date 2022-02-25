void main() {
  var nossaLista = ['Cleide'];

  minhaFuncao(nossaLista);

  print(nossaLista);
  addFuncao(nossaLista);
}

void minhaFuncao(List<String> nome) {
  nome.add('Oliveira');
}

List<String> addFuncao(List<String> nome) {
  var novaLista = [...nome];
  novaLista.add('da Silva');
  print(novaLista);
  return novaLista;
}
