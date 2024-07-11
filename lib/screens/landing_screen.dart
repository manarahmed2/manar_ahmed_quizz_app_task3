import 'package:flutter/material.dart';
import 'package:flutter_app_task3/screens/login_screen.dart';

class LandingScreen extends StatelessWidget {
  final String landingBackground = 'assets/images/background.jpg'; // مسار الصورة الخلفية
  final String appLogo = 'assets/images/home_page.png'; // مسار شعار التطبيق

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(landingBackground),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Spacer(),
            Image.asset(appLogo),
            Text(
              "Quiz App",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, // لون الزر
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  ),
                  child: Text(
                    'Go to login screen',
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
      ),
    );
  }
}
