import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.video_collection), label: 'Shorts'),
        BottomNavigationBarItem(icon: Icon(Icons.add_box), label: 'Upload'),
        BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions), label: 'Subscriptions'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
      ],
      currentIndex: 0,
      selectedItemColor: Colors.white,
      unselectedItemColor: const Color.fromRGBO(226, 222, 222, 1),
      onTap: (index) {
        // Handle navigation
      },
      backgroundColor: Colors.black,
    );
  }
}
