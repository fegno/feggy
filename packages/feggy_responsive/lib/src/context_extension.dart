import 'package:feggy_responsive/imports_bindings.dart';

///* This extension methords reduces
extension BuildContextX on BuildContext {
  ///* to get screen height
  double get height => MediaQuery.sizeOf(this).height;

  ///* to get screen width
  double get width => MediaQuery.sizeOf(this).width;
}
