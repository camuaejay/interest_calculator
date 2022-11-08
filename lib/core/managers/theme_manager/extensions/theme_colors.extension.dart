import 'package:flutter/material.dart';

// import '../values/colors/extended.schemes.dart';


// This class contains color scheme extends
extension ColorSchemeExtension on ColorScheme {
  // Future Plans if light and dark themes needed to be extended
  // ExtendedScheme get extendedColorScheme => if(dark) ExtendedDarkTheme ?: ExtendedLightTheme;

  Color get success => const Color(0xFF28a745);
  Color get info => const Color(0xFF17a2b8);
  Color get warning => const Color(0xFFffc107);
  Color get danger => const Color(0xFFdc3545);
  Color get onSuccess => const Color(0xFFFFFFFF);
  Color get onInfo => const Color(0xFFFFFFFF);
  Color get onWarning => const Color(0xFFFFFFFF);
  Color get onDanger => const Color(0xFFFFFFFF);
}