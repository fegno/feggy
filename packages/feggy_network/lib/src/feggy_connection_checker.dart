import 'package:feggy_network/imports_bindings.dart';

class FeggyConnectionChecker {
  static Future<bool> get hasConnection async {
    return (await Connectivity().checkConnectivity()).contains(ConnectivityResult.none);
  }

  static Stream<bool> get onConnectionChanged {
    return Connectivity().onConnectivityChanged.map((connections) => connections.contains(ConnectivityResult.none));
  }
}