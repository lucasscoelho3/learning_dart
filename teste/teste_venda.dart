import '../modelo/cliente.dart';
import '../modelo/item.dart';
import '../modelo/produto.dart';
import '../modelo/venda.dart';

main() {
  var venda = Venda(
    cliente: new Cliente(
      'Maria',
      '987.654.321-00',
    ),
    itens: <Item>[
      Item(
        quantidade: 4,
        produto: Produto(
          codigo: 87,
          nome: 'Cadeira simples',
          valor: 34.99,
          desconto: 0.25,
        ),
      ),
      Item(
        quantidade: 1,
        produto: Produto(
          codigo: 134,
          nome: 'Mesa de madeira',
          valor: 197.90,
          desconto: 0.15,
        ),
      ),
    ],
  );

  print("O valor total da venda é ${venda.valorTotal}");
}
