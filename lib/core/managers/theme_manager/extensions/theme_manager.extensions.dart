import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../theme_manager.dart';

extension ThemeContextExtension on BuildContext {
  ThemeData get theme => watch<ThemeManager>().currentTheme;
}
