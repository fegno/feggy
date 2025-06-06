import 'package:dio/dio.dart';
import '../feggy_network.dart';

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
    final nHeaders = {
      'Content-Type': 'application/json',
      ...?FeggyNetwork.fixedHeaders,
      ...?headers,
    };

    if (token.isNotEmpty) {
      nHeaders['Authorization'] = token;
    }
    return copyWith(
      headers: nHeaders,
    );
  }
}
