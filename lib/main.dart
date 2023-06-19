import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_flavor_concept/config/flavors.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'app.dart';
import 'config/environments.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

FutureOr<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: "${F.config.envPath}${Environment.fileName}");

  runApp(App(packageInfo: await PackageInfo.fromPlatform()));
}
