import '../imports_bindings.dart';

class FeggyApp extends StatelessWidget {
  FeggyApp({
    required this.child,
    String? Function()? token,
    String? appDocDir,
    String env = '',
    List<int> tokenErrorCodes = const [401],
    Future<void>? Function()? onTokenError,
    super.key,
  }) {
    FeggyNetwork(
      token: token,
      appDocDir: appDocDir,
      env: env,
      tokenErrorCodes: tokenErrorCodes,
      onTokenError: onTokenError,
    );
  }

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
