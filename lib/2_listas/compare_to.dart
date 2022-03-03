void main() {
  var frutas = ['bananas', 'maçãs', 'laranjas', 'bananas', 'Abacate', 'Abacaxi','Abacate'];

  var frutas1 = frutas.toSet();
  var frutas2 = frutas.toSet();

  print(frutas2.intersection(frutas1));

}
