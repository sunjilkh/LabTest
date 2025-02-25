import 'package:flutter/material.dart';

void main() {
  runApp(BloodDonationApp());
}

class BloodDonationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blood Donation',
      theme: ThemeData(primarySwatch: Colors.red),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [HomePage(), DonorListPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Blood Donation")),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Donor List"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Welcome to Blood Donation",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class DonorListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        ListTile(
          title: Text("Name: AAI"),
          subtitle: Text("Blood Type: O+"),
          trailing: ElevatedButton(
            child: Text("Details"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DonorDetailsPage()),
              );
            },
          ),
        ),
        // Add more donors here
      ],
    );
  }
}

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
