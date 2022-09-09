import './produto.dart';

class Item {
  Produto? produto;
  int quantidade;
  double? _valor;

  Item({this.produto, required this.quantidade, double? valor})
      : _valor = valor;

  double get valor {
    if (produto != null && _valor == null) {
      _valor = produto?.valorDesconto;
    }
    return _valor!;
  }

  void set valor(double novoValor) {
    if (novoValor > 0) {
      _valor = novoValor;
    }
  }
}
