import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String quizName;
  final Color quizColor;

  const CategoryCard({
    required this.quizName,
    required this.quizColor,
    Key? key, required Null Function() onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: quizColor,
        child: Center(
          child: Text(
            quizName,
            style: TextStyle(
              fontSize: 30,
              color:Colors.black,
             // تم تغيير اللون إلى أبيض للتباين مع الألوان الخلفية المختلفة
            ),
          ),
        ),
      ),
    );
  }
}
