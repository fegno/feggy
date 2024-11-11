import 'package:feggy_logger/imports_bindings.dart';

/// Writes colored text to the console in debug mode.
///
/// Uses ANSI escape codes to print text in different colors to the terminal.
///
/// [text]: The text to be printed.
/// [clr]: The color in which the text should be printed. Defaults to [Clr.yellow].
void write(
  String text, {
  Clr clr = Clr.yellow,
}) {
  // Check if the application is running in debug mode
  if (kDebugMode) {
    // Retrieve the ANSI escape code for the specified color
    final escapeCode = colorMap[clr] ?? '';
    // Print the colored text to the standard output
    log('$escapeCode$text\x1B[0m\n'); // \x1B[0m resets the color
  }
}
