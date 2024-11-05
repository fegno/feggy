import 'package:feggy_network/src/imports_bindings.dart';

/// Extension methods for Dio [Options] to handle common HTTP headers configuration.
///
/// Provides convenient methods to add authentication tokens and other common headers
/// to HTTP requests.
extension OptionsX on Options {
  /// Add token
  Options get token {
    final token = FeggyNetwork().token?.call();
    if (token == null) {
      assert(false, 'token is null');
      throw Exception('token is null');
    }
    final headers = {
      'Content-Type': 'application/json',
    };

    if (token.isNotEmpty) {
      headers['Authorization'] = 'Token $token';
    }
    return copyWith(
      headers: headers,
    );
  }
}
