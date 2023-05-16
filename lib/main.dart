import 'package:flutter/material.dart';
import 'package:food_recepies/views/home.dart';

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
      title: 'Food Recipe',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        primaryColor: Colors.white,
      ),
      home: const HomePage(),
    );
  }
}
