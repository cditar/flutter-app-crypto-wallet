import 'package:flutter/material.dart';
import 'package:flutter_application_test/screens/home_screen.dart';
import 'package:flutter_application_test/screens/market_screen.dart';
import 'package:flutter_application_test/screens/profile_screen.dart';
import 'package:flutter_application_test/screens/wallet_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AppBarExample(),
    );
  }
}

class AppBarExample extends StatefulWidget {
  const AppBarExample({super.key});

  @override
  State<AppBarExample> createState() => _AppBarExampleState();
}

class _AppBarExampleState extends State<AppBarExample> {
  int selectedIndex = 0;

  static const List<Widget> widgetOptions = <Widget>[
    Home(),
    Market(),
    Wallet(),
    Profile(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 197, 203, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 15, 146),
        title: Text(
          'Voilá',
          style: GoogleFonts.getFont('Nunito',
              color: Colors.white, fontSize: 28, fontWeight: FontWeight.w800),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.show_chart,
              color: Colors.blue,
            ),
            label: 'Market',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.wallet,
              color: Colors.blue,
            ),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.blue),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: onItemTapped,
      ),
    );
  }
}
