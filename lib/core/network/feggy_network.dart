import 'dart:async';

import '../../imports_bindings.dart';

/// A network client wrapper that provides error handling and token management.
///
/// This class is designed as a singleton to maintain a single instance of network
/// configuration throughout the app. It handles common networking tasks such as:
/// - Authentication token management
/// - Error handling and conversion to [ApiException]s
/// - Network connectivity checks
/// - Environment-specific error handling
///
/// Example:
/// ```dart
/// final network = FeggyNetwork(
///   token: () => 'your-auth-token',
///   appDocDir: 'path/to/app/directory',
///   env: 'DEV',
/// );
///
/// // Making an API call
/// final result = await network.call(
///   call: apiCall(),
///   onSuccess: (data) => MyModel.fromJson(data),
/// );
/// ```
final class FeggyNetwork {
  /// Function that returns the current authentication token.
  /// Can be null if authentication is not required.
  final String? Function()? token;

  /// Directory path for storing app-related files (e.g., cookies).
  final String? appDocDir;

  /// Current environment ('DEV', 'STG', 'PROD', etc.).
  /// Used for environment-specific error handling.
  final String env;

  /// HTTP status codes that indicate token-related errors.
  /// Default is [401] (Unauthorized).
  final List<int> tokenErrorCodes;

  /// Callback function to handle token errors.
  /// Typically used for token refresh or user logout.
  final Future<void>? Function()? onTokenError;

  /// Fixed headers to be included in every request.
  /// This can be used to set common headers like 'Content-Type', 'Accept', etc.
  /// that are not dependent on the request.
  static Map<String, dynamic>? fixedHeaders;

  /// Callback function for handling common errors.
  /// This can be used to provide custom error handling logic.
  /// It takes a [DioException] and returns an optional [ApiException].
  /// If null, the default error handling will be used.
  final FutureOr<ApiException?> Function(DioException error)? commonErrorHandles;

  /// Factory constructor that implements the singleton pattern.
  ///
  /// Returns the existing instance if one exists, otherwise creates a new instance
  /// with the provided configuration.
  factory FeggyNetwork({
    String? Function()? token,
    String? appDocDir,
    String env = '',
    List<int> tokenErrorCodes = const [401],
    Future<void>? Function()? onTokenError,
    FutureOr<ApiException?> Function(DioException error)? commonErrorHandles,
    Map<String, dynamic>? fixedHeaders,
  }) {
    // If the instance does not exist, create a new one
    FeggyNetwork.fixedHeaders = fixedHeaders;
    _instance ??= FeggyNetwork._(
      appDocDir: appDocDir,
      token: token,
      env: env,
      tokenErrorCodes: tokenErrorCodes,
      onTokenError: onTokenError,
      commonErrorHandles: commonErrorHandles,
    );
    return _instance!;
  }

  /// Private constructor used by the factory constructor.
  const FeggyNetwork._({
    required this.token,
    required this.appDocDir,
    required this.env,
    required this.tokenErrorCodes,
    required this.onTokenError,
    this.commonErrorHandles,
  });

  /// Singleton instance of [FeggyNetwork].
  static FeggyNetwork? _instance;

  /// Makes an API call with error handling and response transformation.
  ///
  /// Parameters:
  /// - [call]: The Future representing the API call
  /// - [onSuccess]: Function to transform the successful response
  /// - [customHandler]: Optional custom error handler for specific cases
  ///
  /// Returns a Future of type [T] representing the transformed response.
  /// Throws [ApiException] if the call fails.
  Future<T> call<R, T>({
    required Future<R> call,
    required FutureOr<T> Function(R data) onSuccess,
    FutureOr<ApiException?> Function(DioException e)? customHandler,
  }) async {
    final json = await call.catchError((dynamic e) async {
      final error = await handle(e, customHandler: customHandler);
      throw error;
    });
    return await onSuccess(json);
  }

  /// Handles various types of network errors and converts them to [ApiException]s.
  ///
  /// Parameters:
  /// - [e]: The caught error/exception
  /// - [customHandler]: Optional custom error handler for specific cases
  ///
  /// Returns an [ApiException] that represents the error in a standardized way.
  /// Handles various scenarios including:
  /// - Network connectivity issues
  /// - Token errors
  /// - Server errors (4xx, 5xx)
  /// - Environment-specific error messages
  Future<ApiException> handle(
    dynamic e, {
    FutureOr<ApiException?> Function(DioException e)? customHandler,
  }) async {
    if (e is DioException) {
      final customError = await customHandler?.call(e);
      if (customError != null) {
        return customError;
      }
      if (commonErrorHandles != null) {
        final commonError = await commonErrorHandles!(e);
        if (commonError != null) {
          return commonError;
        }
      }
      if (e.error.toString().contains('SocketException')) {
        final hasConnection = await FeggyConnectionChecker.hasConnection;
        return hasConnection ? const ApiException.server() : const ApiException.network();
      } else if (onTokenError != null && tokenErrorCodes.contains(e.response?.statusCode)) {
        await onTokenError!();
      } else if (['DEV', 'STG'].contains(env) && e.response?.data is Map) {
        String? error;
        if ((e.response?.data as Map).containsKey('error')) {
          error = (e.response?.data as Map?)?['error'] as String?;
        } else if ((e.response?.data as Map).containsKey('message')) {
          error = (e.response?.data as Map?)?['message'] as String?;
        }
        return ApiException.unknown(
          msg: error ?? 'Something went wrong .Please try again later !',
        );
      } else if ((e.response?.statusCode ?? 0) >= 400 && (e.response?.statusCode ?? 0) <= 499) {
        return const ApiException.notFound();
      } else if ((e.response?.statusCode ?? 0) >= 500 && (e.response?.statusCode ?? 0) <= 599) {
        return const ApiException.server();
      }
    }
    return const ApiException.unknown();
  }
}
