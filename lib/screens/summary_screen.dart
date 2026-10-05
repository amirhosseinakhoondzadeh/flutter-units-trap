import 'package:flutter/material.dart';

import '../cart.dart';
import '../money.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key, required this.cart});

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Order summary')),
      body: ListView(
        children: [
          for (final line in cart.lines)
            ListTile(
              title: Text(line.product.name),
              subtitle: Text('Quantity ${line.quantity}'),
              trailing: Text(euro.format(line.total)),
            ),
          ListTile(
            title: const Text('Order total'),
            trailing: Text(euro.format(cart.total)),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: FilledButton(
              key: const Key('pay'),
              onPressed: () {},
              child: const Text('Pay'),
            ),
          ),
        ],
      ),
    );
  }
}
