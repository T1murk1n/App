import 'package:flutter/material.dart';
import 'package:medicine/pages/home.dart';
import 'package:medicine/pages/main_screen.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.deepOrangeAccent,
  ),
  initialRoute: '/',
  routes: {
    '/': (context) => MainScreen(),
    '/todo': (context) => Home(),
  },
));