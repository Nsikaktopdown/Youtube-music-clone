import 'package:intl/intl.dart';

extension extString on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(this);
  }

}

extension formatDollarCurrency on String {
  String get toDollarCurrency {
    var format = new NumberFormat("#,###,###");
    return "\$" + format.format(double.parse(this));
  }
}