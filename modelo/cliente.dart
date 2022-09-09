class Cliente {
  String name;
  String cpf;

  //Em Dart, é possível passar variáveis de forma mais simplificada e direta sem a necessidade de utilizar o corpo de um construtor;
  Cliente(this.name, this.cpf);

  /*
  Cliente(String name, String cpf) {
    this.name = name;
    this.cpf = cpf;
  }
  */

  /*
  Cliente({this.nome, this.cpf});
  */
}

main() {
  //Parâmtros posicionais:
  //-Necessitam ser passados numa posição pré-determinada definida na classe 'Cliente';
  var cliente0 = new Cliente('Lucas', '123.456.789-00');
  print('${cliente0.name} ${cliente0.cpf}');

  //Parâmetros nomeáveis:
  //-Necessitam ser nomeados, porém podem ser passados em qualquer posição;
  /*
  var cliente0 = Cliente(
    cpf: '123.456.789-00',
    nome: 'Lucas'
  );
  print('${cliente0.name} ${cliente0.cpf}');
  */
  //Não é necessário definir um novo construtor de um Widget com a variável 'new';
}
