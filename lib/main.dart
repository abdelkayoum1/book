import 'package:book/core/utile/app_route.dart';
import 'package:book/constant.dart';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoute.router,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: colors,

        textTheme: GoogleFonts.montserratTextTheme(
          ThemeData.dark().textTheme,
        ), //add font family
      ),

      // home: SplashViews(),
    );
  }
}
