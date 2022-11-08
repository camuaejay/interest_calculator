import 'package:flutter/material.dart';

import '../abstracts/application_theme.dart';
import '../values/colors/light.schemes.dart';
import '../values/icons/default.icon_theme.dart';
import '../values/texts/text.theme.dart';

class LightTheme extends ApplicationTheme {
  static LightTheme? _instance;

  static LightTheme get instance {
    _instance ??= LightTheme._init();
    return _instance!;
  }

  LightTheme._init();

  @override
  ThemeData getTheme() {

    var colorScheme = lightColorScheme;

    return ThemeData(
        useMaterial3: true,
        colorScheme: colorScheme,
        primaryColor: colorScheme.primary,
        focusColor: colorScheme.primary.withAlpha(10),
        cardColor: colorScheme.background,
        backgroundColor: colorScheme.background,
        brightness: Brightness.light,
        fontFamily: 'Poppins',

        textTheme: appTextTheme,
        buttonTheme: const ButtonThemeData(colorScheme: lightColorScheme),
        iconTheme: defaultIconTheme);
  }
}
