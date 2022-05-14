import 'package:intl/intl.dart';

/// Date formatter with year / month / day.
class Formatter {
  Formatter._();
  static DateFormat longDateFormat() => DateFormat('dd/MM/yyyy');

  static String currencyFormatter(num amount, {String? symbol}) {
    // symbol = symbol ?? Local.symbol;
    final String formatNumber = amount.toStringAsFixed(2).replaceAllMapped(
        RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
    return '$symbol$formatNumber';
  }

/*  static NumberFormat currencyFormatter(String currencyCode) {
    final formatter = NumberFormat.simpleCurrency(
      decimalDigits: 2,
      name: currencyCode,
      // name: ""
    );
    return formatter;
  }*/

  static String formatQuantity(num? qty) {
    final String qtyString = qty.toString();
    String qtyToUse;
    final List<String> qtyArray = qtyString.split('.');
    if (qtyArray.asMap()[1] == '0') {
      qtyToUse = qty!.toStringAsFixed(0);
    } else {
      qtyToUse = qty.toString();
    }
    return qtyToUse;
  }
}
