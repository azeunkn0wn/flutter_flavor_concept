import 'package:flutter/material.dart';

import '../utils/theme_data.dart';

class AppConfig {
  final String title;
  final String description;
  final String envPath;
  final String logo;
  final ThemeData? themeData;

  AppConfig({
    required this.title,
    required this.description,
    required this.envPath,
    required this.logo,
    themeData,
  }) : themeData = themeData ?? defaultThemData;
}
