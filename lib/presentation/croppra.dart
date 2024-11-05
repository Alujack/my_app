import 'package:flutter/material.dart';
import '../widgets/search.dart';

class CropPracticePage extends StatelessWidget {
  const CropPracticePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          SearchWidget(hintText: 'Search update news here'),
          Section(title: 'Plantation'),
          SizedBox(height: 20),
          Section(title: 'Animal Husbandry'),
        ],
      ),
    );
  }
}

class Section extends StatelessWidget {
  final String title;

  const Section({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () {
                // Add navigation to "See All" page if needed
              },
              child: const Text(
                'See All >',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 3 / 2,
          ),
          itemCount: 4, // Adjust the number of items as needed
          itemBuilder: (context, index) {
            return Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/images/crop.png',
                    height: 95,
                    width: 190,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 4),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
