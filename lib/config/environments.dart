import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String get fileName {
    // TODO: override if '.env' file exist
    if (kReleaseMode) {
      return '.env.production';
    }
    return '.env.development';
  }

  static String get current {
    return dotenv.get('ENV', fallback: 'Unknown');
  }

  static String get baseURL {
    return dotenv.get('API_URL');
  }
}
