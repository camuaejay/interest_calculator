import 'package:flutter/material.dart';
import 'package:interest_calculator/core/managers/theme_manager/extensions/theme_manager.extensions.dart';
import 'package:provider/provider.dart';

import '../../presentation/screens/calculator_screen.dart';
import '../managers/theme_manager/enums/theme.enum.dart';
import '../managers/theme_manager/theme_manager.dart';

class AppThemeListener extends StatelessWidget {
  const AppThemeListener({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeManager.instance),
      ],
      child: const MainMaterialApp(),
    );
  }
}

class MainMaterialApp extends StatefulWidget {
  const MainMaterialApp({Key? key}) : super(key: key);

  @override
  State<MainMaterialApp> createState() => _MainMaterialAppState();
}

class _MainMaterialAppState extends State<MainMaterialApp> {
  @override
  void initState() {
    final window = WidgetsBinding.instance.window;

    // This callback is called every time the brightness changes.
    window.onPlatformBrightnessChanged = () {
      () async => await Future.delayed(
            const Duration(milliseconds: 200),
            () => ThemeManager.instance.changeTheme(
                ThemeManager.instance.currentThemeEnum == ThemeEnum.light
                    ? ThemeEnum.dark
                    : ThemeEnum.light),
          );
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: context.theme,
      home: SafeArea(
        child: Scaffold(
          body: Navigator(
            pages: const [
              MaterialPage(
                child: CalculatorScreen(
                  key: ValueKey('CalculatorScreen'),
                ),
              ),
            ],
            onPopPage: ((route, result) => route.didPop(result)),
          ),
        ),
      ),
    );
  }
}
