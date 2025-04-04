import 'dart:async';
import '../imports_bindings.dart';

class Feggy {
  /// A class that provides navigation utilities for the application.
  static final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

  /// Returns the current BuildContext for navigation.
  static BuildContext? get context {
    return navKey.currentContext;
  }

  /// Executes an asynchronous operation and handles success and error cases.
  ///
  /// [call] is the asynchronous operation to execute.
  /// [onSuccess] is a callback that is called with the result of [call] on success.
  /// [customHandler] is an optional custom error handler for DioExceptions.
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

  /// Pops the current route off the navigator.
  ///
  /// Throws an exception if the current context is null.
  static Future<void> pop() async {
    if (context == null) {
      throw Exception('Feggy.navKey.currentContext is null');
    }
    context!.pop();
  }

  /// Pushes a new route onto the navigator.
  ///
  /// [widget] is the new route to be pushed.
  /// Throws an exception if the current context is null.
  static Future<void> push(Widget widget) async {
    if (context == null) {
      throw Exception('Feggy.navKey.currentContext is null');
    }
    context!.push(widget);
  }

  /// Replaces the current route with a new route.
  ///
  /// [widget] is the new route to replace the current one.
  /// Throws an exception if the current context is null.
  static Future<void> pushReplacement(Widget widget) async {
    if (context == null) {
      throw Exception('Feggy.navKey.currentContext is null');
    }
    context!.pushReplacement(widget);
  }

  /// Pushes a new route and removes all previous routes until the specified route.
  ///
  /// [widget] is the new route to be pushed.
  /// Throws an exception if the current context is null.
  static Future<void> pushAndRemoveUntil(Widget widget) async {
    if (context == null) {
      throw Exception('Feggy.navKey.currentContext is null');
    }
    context!.pushAndRemoveUntil(widget);
  }

  /// Retrieves the specified type from the Bloc.
  ///
  /// This method allows you to access the current instance of a Bloc of type [T]
  /// from the widget tree. It is useful for obtaining the state or functionality
  /// of a Bloc without needing to rebuild the widget.
  ///
  /// [T] is the type of the Bloc to retrieve. It must be a type that is provided
  /// in the widget tree above this context.
  ///
  /// Throws an [Exception] if the current context is null or if the Bloc of type [T]
  /// is not found in the widget tree.
  static T? read<T>() {
    return context?.read<T>();
  }
}
