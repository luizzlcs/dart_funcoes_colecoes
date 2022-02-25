void main() {
  var idade = '18a';
  String? nome;
  // Tratamento de Exceções
  try {
    var idadeParse = int.parse(idade);

    // Forçando error
    if(idadeParse == '38'){
      throw Exception();
    }
    nome!.toLowerCase();

  } on FormatException catch (e, s) {
    //print(e);
    print(s);
    //print('erro ao converter idade');
  } on TypeError{ // Se eu não preciso das variaveis 'e, s' então posso remover catch (e, s).
    print('erro ao String nome');
  } catch (erro) {
    print('Erro ao executar programa');
  } finally {
    print('finally'); // sempre vai ser executado
  }
}
