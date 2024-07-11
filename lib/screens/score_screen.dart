import 'package:flutter/material.dart';
import 'package:flutter_app_task3/screens/category_screen.dart';
import 'package:flutter_app_task3/screens/landing_screen.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello Abdallah, you have finished the quiz, and your score is"),
            Text(
              "13/20",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 22, color: Colors.red),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/category');
              },
              child: Text("Play again"),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: Text("Exit"),
            ),
          ],
        ),
      ),
    );
  }
}
