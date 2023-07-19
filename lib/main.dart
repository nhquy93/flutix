import "dart:ui";
import 'package:flutter/material.dart';
import 'package:flutix/colors.dart';
import 'package:flutix/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutix',
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: ColorsApp.scaffoldBackgroundColor,
          useMaterial3: true),
      home: const HomeScreen(),
    );
  }
}
