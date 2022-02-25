void main() {
  var nome = [1, 2, 3];
  var numreverse = nome.reversed;
  print(nome);
  print(numreverse.toList());

  somaDeDoisNumros(20, 10, (num1, num2) => print(num1 + num2));

  var p1 = Pessoa(nome: "Luiz Carlos", idade: 38);
  var p2 = Pessoa(nome: "Luiz Carloss", idade: 38);

  if (p1 == p2) {
    return print("É igual");
  } else {
    print("é diferente");
  }
}

void somaDeDoisNumros(
    int numero1, int numero2, Function(int num1, int num2) recebeNumeros) {
  recebeNumeros(numero1, numero2);
}

class Pessoa {
  String nome;
  int idade;
  Pessoa({
    required this.nome,
    required this.idade,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Pessoa && other.nome == nome && other.idade == idade;
  }

  @override
  int get hashCode => nome.hashCode ^ idade.hashCode;
}
