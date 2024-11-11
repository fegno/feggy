/// Enum representing text colors for use with the [write] function.
enum Clr {
  red, // Red color
  green, // Green color
  yellow, // Yellow color
  blue, // Blue color
  magenta, // Magenta color
  cyan, // Cyan color
  white, // White color
}

/// Map of [Clr] enum values to corresponding ANSI escape codes.
const Map<Clr, String> colorMap = {
  Clr.red: '\x1B[31m', // Red ANSI escape code
  Clr.green: '\x1B[32m', // Green ANSI escape code
  Clr.yellow: '\x1B[33m', // Yellow ANSI escape code
  Clr.blue: '\x1B[34m', // Blue ANSI escape code
  Clr.magenta: '\x1B[35m', // Magenta ANSI escape code
  Clr.cyan: '\x1B[36m', // Cyan ANSI escape code
  Clr.white: '\x1B[37m', // White ANSI escape code
};
