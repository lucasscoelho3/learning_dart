class Produto {
  String nome;
  int codigo;
  double valor;
  double desconto;

  Produto({
    required this.nome,
    required this.codigo,
    required this.valor,
    required this.desconto,
  });

  //Caso queira calcular o preço de um produto com desconto, por exemplo, você pode criar um método como também pode tratá-lo como uma propriedade;

  double get valorDesconto {
    return (1 - desconto) * valor;
  }

  double getValorDesconto() {
    return (1 - desconto) * valor;
  }
}

main() {
  var produto0 = Produto(
    nome: 'Produto',
    codigo: 1,
    valor: 13.50,
    desconto: 0.15,
  );

  //Você pode acessar o preço com desconto como sendo um atributo através de uma propriedade;
  print(produto0.valorDesconto);
  //Ou você pode acessar o preço com desconto como sendo um método, através de um método criado previamente;
  print(produto0.getValorDesconto());
}
