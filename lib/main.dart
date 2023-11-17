import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'app.dart';
import 'dart:js' as js;

void configureApp() {
  setUrlStrategy(PathUrlStrategy());
}

Future<void> main() async {
  js.context.callMethod('disableLandscapeMode');
  await WidgetsFlutterBinding.ensureInitialized();
  configureApp();

  runApp(const ProviderScope(child: MyApp()));
}
