import 'package:flutter/material.dart';
import 'package:interest_calculator/core/managers/theme_manager/values/colors/dark.schemes.dart';

import '../abstracts/application_theme.dart';

class DarkTheme extends ApplicationTheme {
  static DarkTheme? _instance;

  static DarkTheme get instance {
    _instance ??= DarkTheme._init();
    return _instance!;
  }

  DarkTheme._init();

  @override
  ThemeData? get theme =>
      ThemeData(
          useMaterial3: true,
          colorScheme: darkColorScheme,
          brightness: Brightness.dark
      );
}
