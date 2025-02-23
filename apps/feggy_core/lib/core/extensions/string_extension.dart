///*This extension contains
extension StringX on String {
  ///*
  String get pascalCase => replaceAll(RegExp(' +'), ' ').split(' ').map((e) => RegExp(r'^[A-Za-z0-9_.]+$').hasMatch(e) ? '${e[0].toUpperCase()}${e.substring(1).toLowerCase()}' : e).join(' ');

  ///*
  String get noCase => replaceAll(RegExp(' +'), ' ').split('.').map((e) => RegExp(r'^[A-Za-z0-9_.]+$').hasMatch(e) ? '${e[0].toUpperCase()}${e.substring(1).toLowerCase()}.' : e).join(' ');

  ///*
  num get toNum {
    final numAsString = replaceAll(RegExp('[^0-9.]'), '');
    return numAsString.isNotEmpty ? num.parse(numAsString) : 0;
  }

  ///*
  bool get isEmail => RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(this);
}
