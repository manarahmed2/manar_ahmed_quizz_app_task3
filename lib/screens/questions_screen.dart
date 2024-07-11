import 'package:flutter/material.dart';

class QuestionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.logout),
          onPressed: () {},
        ),
        actions: [
          Icon(Icons.message),
          SizedBox(width: 12),
          Icon(Icons.notification_add),
          SizedBox(width: 12),
          Icon(Icons.search),
          SizedBox(width: 12)
        ],
        centerTitle: true,
        title: Text("Quiz app"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "1st Question",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                "what is the last country to host the world cup?",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 22),
              ElevatedButton(onPressed: () {}, child: Text("USA")),
              ElevatedButton(onPressed: () {}, child: Text("Qatar")),
              ElevatedButton(onPressed: () {}, child: Text("France")),
              ElevatedButton(onPressed: () {
                Navigator.pushNamed(context, '/score');
              }, child: Text("Egypt"),),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
        ],
      ),
    );
  }
}
