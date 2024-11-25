import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Dismissible(
        key: const Key("drawer"),
        direction: DismissDirection.startToEnd,
        onDismissed: (_) {
          Navigator.of(context).pop();
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.75,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const SizedBox(height: 10.0),
              const UserAccountHeader(),
              const SizedBox(height: 10.0),
              const Divider(
                thickness: 1.1,
              ),
              ListTile(
                title: const Text('Address'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('name of farm'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('type of farm'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Contact'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('See Post'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Add Post'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Save Post'),
                onTap: () {},
              ),
              const Divider(
                thickness: 1.1,
              ),
              ListTile(
                title: const Text('Logout'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserAccountHeader extends StatelessWidget {
  const UserAccountHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          // Profile Picture
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey.shade300,
            child: const Icon(Icons.person, size: 40),
          ),
          const SizedBox(
              width: 16), // Space between the profile picture and info

          // User Information Column
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Abhishek',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '+919448997000',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade600,
                ),
              ),
              const SizedBox(height: 4),
            ],
          ),
        ],
      ),
    );
  }
}
