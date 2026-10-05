import 'package:flutter/foundation.dart';

import 'catalog.dart';
import 'money.dart';

class CartLine {
  CartLine(this.product, this.quantity);

  final Product product;
  int quantity;

  Cents get total => product.price.times(quantity);
}

class Cart extends ChangeNotifier {
  final List<CartLine> _lines = [];

  List<CartLine> get lines => List.unmodifiable(_lines);

  int get itemCount => _lines.fold(0, (sum, line) => sum + line.quantity);

  Cents get total => _lines.fold(const Cents(0), (sum, line) => sum + line.total);

  void add(Product product) {
    for (final line in _lines) {
      if (line.product.id == product.id) {
        line.quantity++;
        notifyListeners();
        return;
      }
    }
    _lines.add(CartLine(product, 1));
    notifyListeners();
  }
}
