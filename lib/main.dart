import 'package:firebase_auth/theme/routes.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/views/opening_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Auth',
      routes: AppRoutes.define(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: OpeningView(),
    );
  }
}

