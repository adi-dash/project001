import 'package:flutter/material.dart';
import 'page1_AJYA.dart'; 
import 'page2_AJYA.dart';   

class homepage_AJYA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Home'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.home,
              size: 100,
              color: Colors.green,
            ),
            SizedBox(height: 20),

            Text(
              'Welcome to the Home Page!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page1()), // Navigate to Page 1
                );
              },
              child: Text('Go to Page 1'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page2()), // Navigate to Page 2
                );
              },
              child: Text('Go to Page 2'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}