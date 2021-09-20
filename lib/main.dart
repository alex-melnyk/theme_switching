import 'package:flutter/material.dart';
import 'package:theme_switching/pages/pages.dart';

import 'styles/styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    Theming.initialize();
  }

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
