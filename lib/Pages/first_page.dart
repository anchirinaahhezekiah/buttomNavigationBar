import 'package:flutter/material.dart';
import 'package:learning/Pages/homepage.dart';
import 'package:learning/Pages/profile.dart';
import 'package:learning/Pages/settings.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  //this keeps track of the selected index
  int _selectedIndex = 0;

  //this method updates the new selected index
  void _navigateBottomBar(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  //list of pages we have in our app
  final List _pages = [
    //HomePage
    Homepage(),

    //ProfilePage
    ProfilePage(),
    //SettingsPage
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          //Home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          //Profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          //Settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
