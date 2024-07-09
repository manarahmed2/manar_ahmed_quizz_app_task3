import 'package:flutter/material.dart';
import 'package:flutter_app_task3/pages/page1.dart';
// import 'package:flutter_app_task3/pages/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/page1",
      routes: {
        "/page1": (context) => const Page1(),
        // "/page2": (context) => const Page2(),
      },
      home: const Page1(), // إضافة هذه السطر لتحديد الصفحة الرئيسية
    );
  }
}
