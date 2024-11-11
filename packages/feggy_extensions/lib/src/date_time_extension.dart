import 'package:feggy_extensions/imports_bindings.dart';

///
extension DateTimeX on DateTime {
  /// Returns String in MMM DD
  String get mmmDD => DateFormat('MMM dd').format(this);

  /// Returns String in DD MMM
  String get ddMMM => DateFormat('dd MMM').format(this);

  ///
  String get yyyyMMDD => DateFormat('yyyy-MM-dd').format(this);

  ///
  String get ddMMMHH => DateFormat('dd MMM, hh:mm a').format(this);
}
