import 'package:feggy_core/imports_bindings.dart';

extension FeggyX on Feggy {
  static Future<void> pop() async {
    if (Feggy.navKey.currentContext == null) {
      throw Exception('Feggy.navKey.currentContext is null');
    }
    Feggy.navKey.currentContext!.pop();
  }

  static Future<void> push(Widget widget) async {
    if (Feggy.navKey.currentContext == null) {
      throw Exception('Feggy.navKey.currentContext is null');
    }
    Feggy.navKey.currentContext!.push(widget);
  }

  static Future<void> pushReplacement(Widget widget) async {
    if (Feggy.navKey.currentContext == null) {
      throw Exception('Feggy.navKey.currentContext is null');
    }
    Feggy.navKey.currentContext!.pushReplacement(widget);
  }

  static Future<void> pushAndRemoveUntil(Widget widget) async {
    if (Feggy.navKey.currentContext == null) {
      throw Exception('Feggy.navKey.currentContext is null');
    }
    Feggy.navKey.currentContext!.pushAndRemoveUntil(widget);
  }
}
