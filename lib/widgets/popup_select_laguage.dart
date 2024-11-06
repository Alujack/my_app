import 'package:flutter/material.dart';

class LanguageSelectionPopup extends StatefulWidget {
  const LanguageSelectionPopup({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LanguageSelectionPopupState createState() => _LanguageSelectionPopupState();
}

class _LanguageSelectionPopupState extends State<LanguageSelectionPopup>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0.0, 1.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _selectLanguage(String language) {
    // Handle language selection here
    print('Selected language: $language');
    Navigator.of(context).pop(); // Close popup
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/logo.png', width: 250),
                const SizedBox(height: 16),
                ListTile(
                  onTap: () => _selectLanguage('Khmer'),
                  leading:
                      Image.asset('assets/images/khmer_flag.png', width: 32),
                  title: const Text('ភាសាខ្មែរ - Khmer'),
                ),
                ListTile(
                  onTap: () => _selectLanguage('English'),
                  leading:
                      Image.asset('assets/images/england_flag.png', width: 32),
                  title: const Text('ភាសាអង់គ្លេស - English'),
                ),
                const SizedBox(height: 16),
                const Row(
                  children: [
                    Expanded(child: Divider(color: Colors.grey)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text('or', style: TextStyle(color: Colors.black)),
                    ),
                    Expanded(child: Divider(color: Colors.grey)),
                  ],
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Skip for now & Continue',
                      style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Usage example
void showLanguageSelectionPopup(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (BuildContext context) {
      return const LanguageSelectionPopup();
    },
  );
}
