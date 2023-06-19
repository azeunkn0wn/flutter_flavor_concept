import 'package:flutter/material.dart';

class AppConfig {
  final String title;
  final String description;
  final ThemeData themeData;
  final String envPath;
  final String logo;

  AppConfig({
    required this.title,
    required this.description,
    required this.themeData,
    required this.envPath,
    required this.logo,
  });
}
