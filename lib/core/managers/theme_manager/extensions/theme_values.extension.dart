import 'package:flutter/material.dart';

import '../values/dimensions/app_dimensions.dart';
import '../values/decorations/app_decorations.dart';

extension ThemeContextValuesExtension on ThemeData {
  AppDimensions get dimensions => AppDimensions();
  AppDecorations get decorations => AppDecorations();
}
