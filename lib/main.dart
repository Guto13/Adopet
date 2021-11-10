import 'package:adopet/downloads/downloads_screen.dart';
import 'package:adopet/home.dart';
import 'package:flutter/material.dart';
import 'package:adopet/componentes_gerais/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adopet',
      theme: ThemeData(
          colorScheme: ColorScheme(
        primary: KPrimaryColor,
        primaryVariant: KPrimaryColor,
        secondary: Colors.green,
        secondaryVariant: Colors.green,
        surface: KButtonColor,
        background: KPrimaryColor,
        error: Colors.red,
        onPrimary: KPrimaryColor,
        onSecondary: Colors.green,
        onSurface: KButtonColor,
        onBackground: KPrimaryColor,
        onError: Colors.red,
        brightness: Brightness.light,
      )),
      home: HomePage(),
    );
  }
}
