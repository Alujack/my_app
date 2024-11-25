import 'package:flutter/material.dart';
import '../widgets/header.dart';
import '../widgets/navbar.dart';
import 'home_page.dart';
import 'shop.dart';
import 'news.dart';
import 'croppra.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;


  final List<Widget> _pages = [
    const HomePage(),
    const NewsPage(),
    const ShopPage(),
    const CropPracticePage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      body: _pages[_currentIndex],
      bottomNavigationBar: Navbar(
        currentIndex: _currentIndex,
        onTabTapped: onTabTapped,
      ),
    );
  }
}
