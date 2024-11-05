// lib/widgets/navbar.dart
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTabTapped;

  const Navbar({super.key, required this.currentIndex, required this.onTabTapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTabTapped,
      items: const [
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/images/home.png'), // custom home icon
            size: 24, // set size for the icon
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/images/new.png'), // custom news icon
            size: 24,
          ),
          label: 'News',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/images/shop.png'), // custom shop icon
            size: 24,
          ),
          label: 'Shop',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage(
                'assets/images/croppra.png'), // custom crop practices icon
            size: 24,
          ),
          label: 'Crop Practices',
        ),
      ],
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.black,
      type: BottomNavigationBarType.fixed,
    );
  }
}
