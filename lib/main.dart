import 'package:flutter/material.dart';
import 'package:haruhan/screens/finishbook_screen.dart';
import 'package:haruhan/screens/home_screen.dart';
import 'package:haruhan/screens/mainhome_screen.dart';
import 'package:haruhan/screens/startbook_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'haruhan',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: Mainhome(),
    );
  }
}
