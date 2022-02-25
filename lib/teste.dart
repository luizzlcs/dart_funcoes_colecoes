void main() {
  Map<String, String> mao = {};
  chamarUmaFuncaoDeUmParametro(
      (nome) => {nome == null ? print(nome) : print("nome não valido")});
}

void chamarUmaFuncaoDeUmParametro(Function(String nome) funcaoQueRecebeONome) {
  var calculo = 1 + 1;
  var nomeCompleto = 'Rodrigo Rahman';
  funcaoQueRecebeONome(nomeCompleto);
}
