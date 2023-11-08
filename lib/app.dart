//import 'dart:developer';

import 'dart:developer';

import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/provider/theme.dart';
import 'package:my_portfolio/routes/routes.dart';
import 'package:my_portfolio/utils/screen_helper.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //log(MediaQuery.sizeOf(context).height.toString());
    // log(MediaQuery.sizeOf(context).width.toString());
    return Consumer(
      builder: (context, ref, _) {
        return ThemeProvider(
          initTheme: ref.watch(themeProvider).isDarkMode
              ? MyThemes.darkTheme
              : MyThemes.lightTheme,
          child: MaterialApp(
            title: "Mohamed Ali",
            debugShowCheckedModeBanner: false,
            themeMode: ref.watch(themeProvider).themeMode,
            theme: MyThemes.lightTheme,
            darkTheme: MyThemes.darkTheme,
            initialRoute: Routes.initial,
            onGenerateRoute: RouterGenerator.generateRoute,
          ),
        );
      },
    );
  }
}
