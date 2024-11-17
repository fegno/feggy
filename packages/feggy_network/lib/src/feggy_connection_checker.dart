import 'package:feggy_network/imports_bindings.dart';

class FeggyConnectionChecker {
  static Future<bool> get hasConnection async {
    return await InternetConnection().hasInternetAccess;
  }

  static Stream<bool> get onConnectionChanged {
    return InternetConnection().onStatusChange.map((status) => status == InternetStatus.connected);
  }
}
