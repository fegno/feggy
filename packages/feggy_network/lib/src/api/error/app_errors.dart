import 'package:feggy_network/src/imports_bindings.dart';

part 'app_errors.freezed.dart';

/// Custom exception class for handling API-related errors.
///
/// This class uses [freezed] to create immutable error types with predefined
/// error messages. Each factory constructor represents a specific type of API error
/// that can occur during network operations.
///
/// Example:
/// ```dart
/// try {
///   // API call
/// } catch (e) {
///   if (e is ApiException) {
///     switch (e) {
///       case _ServerError():
///         // Handle server error
///       case _NetworkError():
///         // Handle network connectivity error
///       // ... handle other cases
///     }
///   }
/// }
/// ```
@freezed
class ApiException with _$ApiException implements Exception {
  /// Creates a server error instance, typically used for 500 status codes.
  ///
  /// Used when the server fails to process a request due to internal errors.
  /// Default message indicates a server-side issue.
  const factory ApiException.server({
    @Default('Server went wrong ! Please try again later ') String msg
  }) = _ServerError;

  /// Creates a not found error instance, typically used for 404 status codes.
  ///
  /// Used when the requested resource cannot be found on the server.
  /// Default message indicates a general error state.
  const factory ApiException.notFound({
    @Default('Something went wrong ! Please try again later ') String msg
  }) = _NotFoundError;

  /// Creates a network error instance for connectivity issues.
  ///
  /// Used when the device cannot connect to the server due to
  /// network connectivity problems.
  const factory ApiException.network({
    @Default('Please make sure about your connection !') String msg
  }) = _NetworkError;

  /// Creates an unknown error instance for unhandled error cases.
  ///
  /// Used as a fallback when the error doesn't match any other
  /// predefined error types.
  const factory ApiException.unknown({
    @Default('Something went wrong ! Please try again later ') String msg
  }) = _UnKnownError;
}
