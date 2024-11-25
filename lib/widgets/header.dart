// lib/widgets/header.dart
import 'package:flutter/material.dart';
import '../presentation/profile.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          leading: IconButton(
            icon: const ImageIcon(
              AssetImage('assets/images/menu.png'), // custom home icon
              size: 24,
              color: Colors.black,
            ),
            onPressed: () {
              showCustomDrawer(context);
            },
          ),
          title: const Text(
            'FarmLink',
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          centerTitle: false,
          actions: [
            IconButton(
              icon: const ImageIcon(
                AssetImage(
                    'assets/images/notification.png'), // custom home icon
                size: 24,
                color: Colors.black,
              ),
              onPressed: () {
                // Add notification functionality here
              },
            ),
            IconButton(
              icon: const ImageIcon(
                AssetImage('assets/images/send.png'), // custom home icon
                size: 24,
                color: Colors.black,
              ),
              onPressed: () {
                // Add send functionality here
              },
            ),
          ],
        ),
      ],
    );
  }

  void showCustomDrawer(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          insetPadding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.125),
          backgroundColor: Colors.transparent,
          child: const CustomDrawer(),
        );
      },
    );
  }
}
