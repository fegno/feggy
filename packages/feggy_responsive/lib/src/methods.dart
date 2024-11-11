import 'package:feggy_responsive/imports_bindings.dart';
import 'package:feggy_responsive/src/context_extension.dart';

/// Checks if the screen size is considered small (width <= 400).
bool isSmallScreen(BuildContext context) => _screenSize(context, (width) => width <= smallScreenSize);

/// Checks if the screen size is considered medium (400 < width <= 800).
bool isMediumScreen(BuildContext context) => _screenSize(context, (width) => width > smallScreenSize && width <= mediumScreenSize);

/// Checks if the screen size is considered large (800 < width <= 1100).
bool isLargeScreen(BuildContext context) => _screenSize(context, (width) => width > mediumScreenSize && width <= largeScreenSize);

/// Checks if the screen size is considered extra-large (width > 1100).
bool isExtraLargeScreen(BuildContext context) => _screenSize(context, (width) => width > largeScreenSize);

/// Determines the current screen size based on the width using the provided condition.
bool _screenSize(BuildContext context, bool Function(double) condition) {
  return condition.call(context.width);
}

/// Determines the current screen size based on the width using the provided condition.
double responsiveSize(BuildContext context, {required double s, double? m, double? l, double? xl}) {
  return switch (context.width) {
    > largeScreenSize => xl ?? l ?? m ?? s, // Extra-large screen
    > mediumScreenSize => l ?? m ?? s, // Large screen
    > smallScreenSize => m ?? s, // Medium screen
    _ => s, // Small screen
  };
}

/// Determines the current screen size based on the width using the provided condition.
int responsiveCount(BuildContext context, {required double contentWidth}) {
  final count = context.width / contentWidth;
  if (count < 1) {
    return 1;
  }
  return count.toInt();
}
