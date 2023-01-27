import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'myapp.dart';

void configureApp() {
  setUrlStrategy(PathUrlStrategy());
}

Future<void> main() async {

  await WidgetsFlutterBinding.ensureInitialized();
  configureApp();

  runApp(const ProviderScope(child: MyApp()));
}
