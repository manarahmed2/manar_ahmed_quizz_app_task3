import 'package:flutter/material.dart';
import 'package:flutter_app_task3/widgets/category_card.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({Key? key});

  final List<Map<String, dynamic>> data = [
    {'name': "Iq Quiz", 'color': Colors.red},
    {'name': "Sport Quiz", 'color': const Color.fromARGB(255, 242, 240, 240)},
    {'name': "History Quiz", 'color': Colors.green}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose a Category"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            for (int i = 0; i < data.length; i++)
              CategoryCard(
                quizName: data[i]['name'],
                quizColor: data[i]['color'],
                onTap: () {
                  Navigator.pushNamed(context, '/questions');
                },
              ),
          ],
        ),
      ),
    );
  }
}

