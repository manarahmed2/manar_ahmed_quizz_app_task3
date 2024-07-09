import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/background.jpg",
              fit: BoxFit.cover, // يغطي الصورة بالكامل
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // إضافة صورة في الوسط
                Image.asset(
                  "assets/images/home_page.png",
                  height: 150,
                  width: 150,
                ),
                const SizedBox(height: 20), // إضافة فراغ بين الصورة والنص
                const Text(
                  'ITI Quizz App',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.amber, // لون النص
                  ),
                ),
                const SizedBox(height: 20), // إضافة فراغ بين النص والزر
                const Text(
                  'We are creative, enjoy the app',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white, // لون النص
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  // أكشن الزر
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // لون الزر
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                ),
                child: const Text(
                  'Start',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white, // لون النص داخل الزر
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
