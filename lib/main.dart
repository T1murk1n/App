import 'package:flutter/material.dart';
import 'package:medicine/pages/main_screen.dart';
import 'package:medicine/pages/splash.dart';
import 'package:medicine/pages/notes.dart';
import 'package:medicine/pages/menu.dart';
import 'package:medicine/pages/cards.dart';
import 'package:medicine/pages/menu_latin.dart';
import 'package:medicine/pages/quiz2.dart';
import 'package:medicine/pages/situation.dart';
import 'package:medicine/pages/check_yourself.dart';
import 'package:medicine/pages/video.dart';
import 'package:medicine/pages/first_sub_menu.dart';
import 'package:medicine/pages/second_sub_menu.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primaryColor: Colors.deepOrangeAccent,
  ),
  initialRoute: '/splash',
  routes: {
    '/splash': (context) => const SplashScreen(),
    '/': (context) => const MainScreen(),
    '/notes': (context) => const Notes(),
    '/menu': (context) => const Menu(),
    '/cards': (context) => const Cards(),
    '/menu_latin': (context) => const MenuLatin(),
    '/quiz2': (context) => const QuizzScreen(),
    '/situation': (context) => const Situation(),
    '/check_yourself': (context) => const CheckYourself(),
    '/video': (context) =>  VideoPlayerWidget(),
    '/first_sub_menu': (context) =>  const FirstSubMenu(),
    '/second_sub_menu': (context) =>  const SecondSubMenu(),
  },
));