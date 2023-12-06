import 'package:fashion/address.dart';
import 'package:fashion/bottomnavigationbar.dart';
import 'package:fashion/home.dart';
import 'package:fashion/search.dart';
import 'package:fashion/tabbar.dart';
import 'package:fashion/women.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: Bottomnav(),
    );
  }
}
