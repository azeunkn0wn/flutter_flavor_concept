import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_flavor_concept/utils/endpoints.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'package:flutter_flavor_concept/config/environments.dart';

import 'config/flavors.dart';

class App extends StatelessWidget {
  final PackageInfo packageInfo;
  const App({
    Key? key,
    required this.packageInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: F.config.title,
      theme: F.config.themeData,
      home: Scaffold(
        appBar: AppBar(
          // centerTitle: false,
          title: Image(
            fit: BoxFit.scaleDown,
            height: 45,
            image: AssetImage(F.config.logo),
          ),
        ),
        body: ListView(
          children: [
            ListTile(
              title: const Text('Flavor'),
              subtitle: Text(F.current),
            ),
            ListTile(
              title: const Text('Environment'),
              subtitle: Text(Environment.current),
            ),
            ListTile(
              title: const Text('Base URL'),
              subtitle: Text(Environment.baseURL),
            ),
            ListTile(
              title: const Text('API URL'),
              subtitle: Text(Endpoints.servertUrl),
            ),

            ListTile(
              title: const Text('Package Info'),
              subtitle: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("appName: ${packageInfo.appName}"),
                    Text("packageName: ${packageInfo.packageName}"),
                    Text("version: ${packageInfo.version}"),
                    Text("buildNumber: ${packageInfo.buildNumber}"),
                  ],
                ),
              ),
            ),

            // variables for debugging
            if (kDebugMode) ...[
              ListTile(
                title: const Text('Test Username'),
                subtitle: Text(dotenv.env['TEST_USERNAME'] ?? 'Does not exist'),
              ),
              ListTile(
                title: const Text('Test Password'),
                subtitle: Text(dotenv.env['TEST_PASSWORD'] ?? 'Does not exist'),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
