import 'package:flutter/material.dart';
import 'package:interest_calculator/core/managers/theme_manager/values/colors/light.schemes.dart';

import '../abstracts/application_theme.dart';

class LightTheme extends ApplicationTheme {
  static LightTheme? _instance;
  static LightTheme get instance {
    _instance ??= LightTheme._init();
    return _instance!;
  }

  LightTheme._init();

  @override
  ThemeData? get theme => ThemeData(
    useMaterial3: true,
    colorScheme: lightColorScheme,
    brightness: Brightness.light
  );
}