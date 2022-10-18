import 'package:flutter/material.dart';

import '../enums/theme.enum.dart';
import '../theme_data/dark.theme.dart';
import '../theme_data/light.theme.dart';

extension ThemeEnumExtension on ThemeEnum {
  ThemeData get generateTheme {
    switch (this) {
      case ThemeEnum.light:
        return LightTheme.instance.theme!;
      case ThemeEnum.dark:
        return DarkTheme.instance.theme!;
      default:
        return LightTheme.instance.theme!;
    }
  }
}
