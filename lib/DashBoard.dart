import 'package:demo/FavScreen.dart';
import 'package:demo/HomeScreen.dart';
import 'package:demo/ProfileScreen.dart';
import 'package:demo/SearchScreen.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedIndex = 0;

  List <Widget> screens = [
    Homescreen(),
    Searchscreen(),
    Favscreen(),
    Profilescreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      backgroundColor: Colors.teal,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.tealAccent,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        currentIndex: selectedIndex,

        onTap: (index) {
          setState(() { 
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'SEARCH'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'FAV'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'PROFILE'),
        ],
      ),
      body: screens[selectedIndex],
    );
  }
}
