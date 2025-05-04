import 'dart:async';

import '../imports_bindings.dart';

class FeggyApp extends StatelessWidget {
  FeggyApp({
    required this.child,
    String? Function()? token,
    String? appDocDir,
    String env = '',
    List<int> tokenErrorCodes = const [401],
    Future<void>? Function()? onTokenError,
    FutureOr<ApiException?> Function(DioException error)? commonErrorHandlers,
    Map<String, String>? fixedHeaders,
    super.key,
  }) {
    FeggyNetwork(
      token: token,
      appDocDir: appDocDir,
      env: env,
      tokenErrorCodes: tokenErrorCodes,
      onTokenError: onTokenError,
      commonErrorHandles: commonErrorHandlers,
      fixedHeaders: fixedHeaders,
    );
  }

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
