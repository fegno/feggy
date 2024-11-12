import 'dart:async';

import 'package:feggy_core/imports_bindings.dart';
import 'package:feggy_network/imports_bindings.dart';

class Feggy {
  ///
  static final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

  ///
  static BuildContext? get context {
    return navKey.currentContext;
  }

  ///
  static Future<T> async<R, T>({
    required Future<R> call,
    required FutureOr<T> Function(R) onSuccess,
    FutureOr<ApiException?> Function(DioException)? customHandler,
  }) {
    return FeggyNetwork().call(
      call: call,
      onSuccess: onSuccess,
      customHandler: customHandler,
    );
  }
}
