import 'package:feggy_responsive/imports_bindings.dart';
import 'package:feggy_responsive/src/context_extension.dart';

/// A widget that adapts its child based on the screen size.
class ResponsiveWidget extends StatelessWidget {
  /// Constructs a ResponsiveWidget.
  ///
  /// [s] is required and represents the widget to display on small screens.
  /// [m], [l], [xl] are optional and represent widgets to display on medium, large, and extra-large screens respectively.
  const ResponsiveWidget({
    required this.s,
    this.m,
    this.l,
    this.xl,
    super.key,
  });

  /// Widget to display on small screens (width <= 400).
  final Widget s;

  /// Widget to display on medium screens (400 < width <= 800).
  final Widget? m;

  /// Widget to display on large screens (800 < width <= 1100).
  final Widget? l;

  /// Widget to display on extra-large screens (width > 1100).
  final Widget? xl;

  @override
  Widget build(BuildContext context) {
    return switch (context.width) {
      > largeScreenSize => xl ?? l ?? m ?? s, // Extra-large screen
      > mediumScreenSize => l ?? m ?? s, // Large screen
      > smallScreenSize => m ?? s, // Medium screen
      _ => s, // Small screen
    };
  }
}
