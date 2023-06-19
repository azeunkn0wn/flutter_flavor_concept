import 'app_config.dart';
import '../models/app_config_model.dart';

enum Flavor {
  meetyoda,
  myvcmo,
}

class F {
  static Flavor? appFlavor;

  static String get current => appFlavor?.name ?? '';

  static AppConfig get config {
    switch (appFlavor) {
      case Flavor.meetyoda:
        return meetYodaAppConfig;
      case Flavor.myvcmo:
        return myvcmoAppConfig;
      default:
        return myvcmoAppConfig;
    }
  }

  // static String get title => config.title;
  // static String get description => config.description;
  // static ThemeData get themeData => config.themeData;
  // static String get envPath => config.envPath;
}
