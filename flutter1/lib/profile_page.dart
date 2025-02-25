import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person, size: 100, color: Colors.red),
            SizedBox(height: 20),
            Text(
              "User Profile",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Name: Sunzil Khandaker",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "Email: sunzilkhandaker@gmail.com",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "Name: Monjurul Islam",
              style: TextStyle(fontSize: 18),
            ),
            Text("Email: prottoy12@gmail.com"),
          ],
        ),
      ),
    );
  }
}
