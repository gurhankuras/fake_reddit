import 'package:intl/intl.dart';

abstract class Format {
  static NumberFormat decimalNumber({String countryCode = "en_US"}) =>
      NumberFormat("###,###,###", countryCode);

  static DateFormat hours() => DateFormat('h:mm a');
  static DateFormat dayMonth() => DateFormat.MMMMd();
}
