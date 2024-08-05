import 'package:flutter/material.dart';

class Screentwo extends StatelessWidget {
  const Screentwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset('assets/images/Logo Small.png'),
                const SizedBox(width: 10), // Add spacing between image and text
                Text('AduiBook'),
              ],
            ),
            Icon(Icons.settings),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'see more',
                    style: TextStyle(color: Colors.deepPurpleAccent),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Wrap(
                spacing: 20,
                runSpacing: 8,
                children: [
                  CategoryChip(label: 'Art'),
                  CategoryChip(label: 'Business'),
                  CategoryChip(label: 'Comedy'),
                  CategoryChip(label: 'Drama'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommended For You',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See more',
                    style: TextStyle(color: Colors.deepPurpleAccent),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset('assets/images/Image Placeholder 400x600.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Image.asset('assets/images/Image Placeholder 1.png'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best seller',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'See more',
                    style: TextStyle(color: Colors.deepPurpleAccent),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Card(
                    child: Image.asset('assets/images/Image Placeholder 2.png', alignment: Alignment.bottomLeft),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('Light Mage'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Library',
          ),
        ],
        selectedItemColor: Colors.blue, // Set the selected item color to blue
        unselectedItemColor: Colors.grey, // Set the unselected item color to grey
        showUnselectedLabels: true, // Show labels for both selected and unselected items
      ),
    );
  }
}

class CategoryChip extends StatelessWidget {
  final String label;

  const CategoryChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
    );
  }
}
