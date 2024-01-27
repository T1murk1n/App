import 'dart:js';

import 'package:flutter/material.dart';
import 'package:medicine/pages/home.dart';
import 'package:medicine/pages/main_screen.dart';
import 'package:medicine/pages/splash.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primaryColor: Colors.deepOrangeAccent,
  ),
  initialRoute: '/splash',
  routes: {
    '/splash': (context) => SplashScreen(),
    '/': (context) => MainScreen(),
    '/todo': (context) => Home(),
  },
));