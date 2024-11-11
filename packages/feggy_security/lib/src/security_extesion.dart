import 'package:feggy_security/imports_bindings.dart';

///*This extension contains
extension SecurityStringX on String {
  ///*
  String get encrept => SecurityServices.encrept(this);

  ///*
  String get decrypt => SecurityServices.decrypt(this);
}
