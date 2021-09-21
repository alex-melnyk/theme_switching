import 'package:flutter/material.dart';
import 'package:theme_switching/pages/pages.dart';

import 'styles/styles.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Theming.initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme Switching Demo',
      themeMode: ThemeMode.system,
      theme: Theming.light,
      darkTheme: Theming.dark,
      highContrastTheme: Theming.light,
      highContrastDarkTheme: Theming.dark,
      home: HomePage(),
    );
  }
}
