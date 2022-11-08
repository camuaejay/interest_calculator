import 'package:flutter/material.dart';
import '../values/icons/default.icon_theme.dart';

import '../abstracts/application_theme.dart';
import '../values/colors/dark.schemes.dart';
import '../values/texts/text.theme.dart';

class DarkTheme extends ApplicationTheme {
  static DarkTheme? _instance;

  static DarkTheme get instance {
    _instance ??= DarkTheme._init();
    return _instance!;
  }

  DarkTheme._init();

  @override
  ThemeData getTheme() {
    return ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        backgroundColor: darkColorScheme.background,
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
        textTheme: appTextTheme,
        iconTheme: defaultIconTheme);
  }
}
