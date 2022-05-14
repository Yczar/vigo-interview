import 'package:intl/intl.dart';
import 'dart:convert';

extension StringExtensions on String {
  ///
  String get currencyFormat => NumberFormat('###.0#', 'en_US').format(this);
}

extension NullableStringExtensions on String? {
  ///
  String get defaultEmptyString => this ?? '';
  String get tobase64 => this == null ? '' : base64.encode(utf8.encode(this!));
}
