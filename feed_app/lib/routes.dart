import 'package:flutter/material.dart';
import 'package:feed_app/screens/login/login_screen.dart';
import 'package:feed_app/screens/home/home_screen.dart';

final routes = {
  '/login': (BuildContext context) => new LoginScreen(),
  // '/home': (BuildContext context) => new HomeScreen(),
  '/': (BuildContext context) => new LoginScreen(),
};
