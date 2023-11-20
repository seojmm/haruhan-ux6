import 'package:flutter/material.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('community'),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF81D8CF),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/discover.png"),
            ),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/bookmark.png"),
            ),
            label: 'My Books',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/home.png"),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/community.png"),
            ),
            label: 'Community',
          ),
        ],
      ),
    );
  }
}
