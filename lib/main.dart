import 'package:flutter/material.dart';
import 'package:flutter_application_splash/view/blank_screen/blank_screen1.dart';
import 'package:flutter_application_splash/view/blank_screen/blank_screen2.dart';
import 'package:flutter_application_splash/view/blank_screen/blank_screen3.dart';
import 'package:flutter_application_splash/view/coming_soon_screen/coming_soon_screen.dart';
import 'package:flutter_application_splash/view/home_screen/home_screen.dart';
import 'package:flutter_application_splash/view/home_screen/movies.dart';
import 'package:flutter_application_splash/view/home_screen/tv_shows.dart';
import 'package:flutter_application_splash/view/my_list/my_list.dart';
import 'package:flutter_application_splash/view/search_screen/search_screen.dart';
import 'package:flutter_application_splash/view/splash_screen/splash_screen.dart';

import 'view/download_screen/download_screen.dart';
import 'view/more_screen/more_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );}}