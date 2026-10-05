import 'money.dart';
class Product {
  const Product({required this.id, required this.name, required this.price});

  final String id;
  final String name;

  /// Price in cents.
  final Cents price;
}

const catalog = [
  Product(id: 'mug', name: 'Ceramic mug', price: Cents(1299)),
  Product(id: 'tote', name: 'Canvas tote', price: Cents(1999)),
  Product(id: 'notebook', name: 'Dot grid notebook', price: Cents(850)),
];
