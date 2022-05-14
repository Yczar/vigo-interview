import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension BuildContextExtensions on BuildContext {
  ThemeData get themeData => Theme.of(this);

  ///
  String get currencyFormat => NumberFormat('###.0#', 'en_US').format(this);
}
