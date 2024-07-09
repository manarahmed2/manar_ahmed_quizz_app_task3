import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // إضافة صورة في موضع معين
          Positioned(
            top: 150,
            left: 150,
            bottom: 120,
            child: Image.asset(
              "assets/images/alien.png",
              height: 150,
              width: 150,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
             
              ],
            ),
          ),
        ],
      ),
    );
  }
}
