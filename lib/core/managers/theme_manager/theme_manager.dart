import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:interest_calculator/core/managers/theme_manager/extensions/theme_enum.extensions.dart';

import 'enums/theme.enum.dart';
import 'interfaces/theme_manager.interface.dart';

class ThemeManager extends ChangeNotifier implements IThemeManager {
  static ThemeManager? _instance;

  static ThemeManager get instance {
    _instance ??= ThemeManager._init();
    return _instance!;
  }

  ThemeManager._init();

  static var brightness = SchedulerBinding.instance!.window.platformBrightness;

  ThemeData currentTheme = brightness == Brightness.light ? ThemeEnum.light
      .generateTheme : ThemeEnum.dark.generateTheme;

  ThemeEnum currentThemeEnum =
  brightness == Brightness.light ? ThemeEnum.light : ThemeEnum.dark;

  @override
  void changeTheme(ThemeEnum theme) {
    if (theme != currentThemeEnum) {
      currentTheme = theme.generateTheme;
      currentThemeEnum = theme;
      notifyListeners();
    }
    return;
  }
}
