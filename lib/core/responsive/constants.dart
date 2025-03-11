/// Breakpoints for responsive design based on screen width.
const int smallScreenSize = 500;
const int mediumScreenSize = 900;
const int largeScreenSize = 1200;

/// Enum defining different screen sizes for responsive layout.
enum Screen {
  /// Small screen (width <= 400)
  s,

  /// Medium screen (400 < width <= 800)
  m,

  /// Large screen (800 < width <= 1100)
  l,

  /// Extra large screen (width > 1100)
  xl,
}
