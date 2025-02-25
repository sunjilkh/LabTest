import 'package:flutter/material.dart';

class DonorDetailsPage extends StatelessWidget {
  final Map<String, String> donor;

  DonorDetailsPage({required this.donor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Donor Details")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person, size: 60, color: Colors.red),
            SizedBox(height: 16),
            Text(
              "Name: ${donor["name"]}",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "Blood Type: ${donor["bloodType"]}",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

class DonorListPage extends StatelessWidget {
  // Sample donor data
  final List<Map<String, String>> donors = [
    {"name": "Sunzil", "bloodType": "O+"},
    {"name": "Prottoy", "bloodType": "A-"},
    {"name": "Rony", "bloodType": "B+"},
    {"name": "Mehedi", "bloodType": "AB+"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Donor List")),
      body: GridView.count(
        crossAxisCount: 2, // 2 columns

        children: donors.map((donor) {
          return GestureDetector(
            onTap: () {
              // Navigate to DonorDetailsPage with donor data
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DonorDetailsPage(donor: donor),
                ),
              );
            },
            child: Card(
              color: Colors.red[100],
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person, size: 40, color: Colors.red),
                    SizedBox(height: 8),
                    Text(
                      donor["name"]!,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Blood: ${donor["bloodType"]}",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
