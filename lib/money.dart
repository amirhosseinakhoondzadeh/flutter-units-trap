import 'package:intl/intl.dart';

extension type const Cents(int value) {
  Cents operator +(Cents other) => Cents(value + other.value);
  Cents times(int n) => Cents(value * n);
}

final _euro = NumberFormat.currency(locale: 'en_IE', symbol: '€');

String formatCents(Cents cents) => _euro.format(cents.value / 100);
