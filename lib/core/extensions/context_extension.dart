import '../../imports_bindings.dart';

///* This extension methords reduces
extension BuildContextX on BuildContext {
  ///*To move to new page
  void push(Widget widget) {
    Navigator.push(this, MaterialPageRoute<Widget>(builder: (context) => widget));
  }

  ///*Close current page
  void pop() => Navigator.pop(this);

  ///*Replace current page
  void pushReplacement(Widget widget) {
    Navigator.pushReplacement(this, MaterialPageRoute<Widget>(builder: (context) => widget));
  }

  ///*Remove all screens and Move to new page
  void pushAndRemoveUntil(Widget widget) {
    Navigator.pushAndRemoveUntil(this, MaterialPageRoute<Widget>(builder: (context) => widget), (route) => false);
  }

  ///* to get screen height
  double get height => MediaQuery.sizeOf(this).height;

  ///* to get screen width
  double get width => MediaQuery.sizeOf(this).width;

  ///* For getting Themes
  ThemeData get theme => Theme.of(this);

  ///* For getting theme inverted color
  Color get color => theme.iconTheme.color!;
}
