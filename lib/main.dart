import 'package:flutter/material.dart';
import 'package:medicine/pages/home.dart';
import 'package:medicine/pages/main_screen.dart';
import 'package:medicine/pages/splash.dart';
import 'package:medicine/pages/notes.dart';
import 'package:medicine/pages/menu.dart';
import 'package:medicine/pages/cards.dart';
import 'package:medicine/pages/quiz.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primaryColor: Colors.deepOrangeAccent,
  ),
  initialRoute: '/splash',
  routes: {
    '/splash': (context) => const SplashScreen(),
    '/': (context) => const MainScreen(),
    '/card': (context) => const Home(),
    '/notes': (context) => const Notes(),
    '/menu': (context) => const Menu(),
    '/cards': (context) => const Cards(),
    '/quiz': (context) => const Quiz(),
  },
));