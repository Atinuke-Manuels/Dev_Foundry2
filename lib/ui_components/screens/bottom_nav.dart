import 'package:flutter/material.dart';
import 'package:dev_foundry_task/ui_components/screens/home_screen.dart';
import 'package:dev_foundry_task/ui_components/screens/package_details_screen.dart';

import '../../constants/constants.dart';


class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _selectedIndex = 0;

  // List of screens corresponding to the bottom nav items
  final List<Widget> _screens = [
    HomeScreen(),
    PackageDetailsScreen(),
    // placeholders for other screens
    Scaffold(body: Center(child: Text('Chat Screen'))),
    Scaffold(body: Center(child: Text('Profile Screen'))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: screenHeight > 500 ? screenHeight*0.08 : screenHeight*0.18,
        margin: EdgeInsets.only(left: 50, right: 50, bottom: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              spreadRadius: 1,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildNavItem(Icons.home_filled, 0),
            _buildNavItem(Icons.card_giftcard, 1),
            _buildNavItem(Icons.chat_bubble_outline, 2),
            _buildNavItem(Icons.person_outline, 3),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index) {
    bool isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: isSelected
            ? BoxDecoration(
            color: bottomTabActiveColor,
            shape: BoxShape.circle
        )
            : null,
        child: Icon(
          icon,
          color: isSelected ? scaffoldBackgroundColor : colorGrey,
          size: 24,
        ),
      ),
    );
  }
}