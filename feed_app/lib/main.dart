import 'package:flutter/material.dart';
import 'package:feed_app/routes.dart';

void main() => runApp(FeedApp());

class FeedApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Feed Application",
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: routes,
    );
  }
}
