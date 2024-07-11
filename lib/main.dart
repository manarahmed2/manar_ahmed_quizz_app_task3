import 'package:flutter/material.dart';
import 'package:flutter_app_task3/screens/category_screen.dart';
import 'package:flutter_app_task3/screens/landing_screen.dart';
import 'package:flutter_app_task3/screens/login_screen.dart';
import 'package:flutter_app_task3/screens/questions_screen.dart';
import 'package:flutter_app_task3/screens/score_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LandingScreen(),
        '/login': (context) => Login(),
        '/category': (context) => CategoryScreen(),
        '/questions': (context) => QuestionsScreen(),
        '/score': (context) => ScoreScreen(),
      },
    );
  }
}
