import 'package:flutter/material.dart';
import 'package:themed_app/theme/color_schemes.dart';

enum Tema {
  GreenLight,
  GreenDark,
  BlueLight,
 
}

final TemaData = {
  Tema.GreenLight: ThemeData(
    primaryColor: Colors.green,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.green,
      brightness: Brightness.light,
    ),
  ),
  Tema.GreenDark: ThemeData(
    primaryColor: Colors.green[700],
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.green[700]!,
      brightness: Brightness.dark,
    ),
  ),
  Tema.BlueLight: ThemeData(
    primaryColor: Colors.lightBlue,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.lightBlue,
      brightness: Brightness.light,
    ),
  ),
 

  // TODO: cree la variante con material 3 y los color schemas
};