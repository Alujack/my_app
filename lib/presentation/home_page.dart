import 'package:flutter/material.dart';
import '../widgets/search.dart';
import '../widgets/popup_select_laguage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SearchWidget(hintText: 'Search FarmLink'),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                // Show the language selection popup
                showLanguageSelectionPopup(context);
              },
              child: const Text('Select Language'),
            ),
            const SizedBox(height: 8),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                              'assets/images/avatar.png'), // Replace with actual image
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'នាង ចិន្តា', // User name in Khmer
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'អម្បាញ់មិញ', // Post time
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'នៅឆ្នាំក្រោយខ្ញុំនឹងដាំម្រះនៅលើផ្ទៃដីចំនួន៣ហិកតា៕ តាមទិន្នផលសរុបប្រហែល១តោន',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 8),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'assets/images/crop.png', // Replace with actual image path
                        fit: BoxFit.cover,
                        height: 180,
                        width: double.infinity,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.thumb_up),
                              onPressed: () {},
                            ),
                            const Text(
                              'ចូលចិត្ត',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.comment),
                              onPressed: () {},
                            ),
                            const Text(
                              'បញ្ចេញមតិ',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.share),
                              onPressed: () {},
                            ),
                            const Text(
                              'ចែករំលែក',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
