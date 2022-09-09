import './cliente.dart';
import './item.dart';

class Venda {
  Cliente cliente;
  List<Item> itens;

  Venda({required this.cliente, this.itens = const []});

  double get valorTotal {
    //Método procedural (simples):

    /*
    double total = 0.0;

    for (Item i in itens) {
      total += i.quantidade * i.valor;
    }
    return total;
    */

    //Método map_reduce (avançado):

    return itens
        .map((i) => i.quantidade * i.valor)
        .reduce((total, atual) => total + atual);
  }
}
