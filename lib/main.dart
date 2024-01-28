import 'dart:js';

import 'package:flutter/material.dart';
import 'package:medicine/pages/home.dart';
import 'package:medicine/pages/main_screen.dart';
import 'package:medicine/pages/splash.dart';
import 'package:medicine/pages/notes.dart';
import 'package:medicine/pages/menu.dart';
import 'package:medicine/pages/cards.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primaryColor: Colors.deepOrangeAccent,
  ),
  initialRoute: '/splash',
  routes: {
    '/splash': (context) => SplashScreen(),
    '/': (context) => MainScreen(),
    '/card': (context) => Home(),
    '/notes': (context) => Notes(),
    '/menu': (context) => Menu(),
    '/cards': (context) => Cards(),
  },
));