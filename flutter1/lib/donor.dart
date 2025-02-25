import 'package:flutter/material.dart';

class DonorDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name: AAI", style: TextStyle(fontSize: 20)),
            Text("Blood Type: O+", style: TextStyle(fontSize: 20)),
            Text("Mobile: ---", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
