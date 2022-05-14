import 'package:intl/intl.dart';

extension NumExtensions on num {
  ///
  String get currencyFormat => NumberFormat('###,###.0#', 'en_US').format(this);
}
