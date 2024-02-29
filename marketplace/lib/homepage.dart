import 'package:flutter/material.dart';
import 'package:marketplace/det.dart';
import 'package:marketplace/view/Register/login.dart';
import 'package:marketplace/product.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  Color _cardColor = Colors.white;
  String _selectedText = '';

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => homepage()));
      } else if (index == 1) {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => signup()));
      } else if (index == 2) {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 235, 226, 226),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 20,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 15, 0),
            child: ClipOval(
              child: Image.asset(
                './lib/assets/gib.jpg',
                fit: BoxFit.cover,
                width: 50.0,
                height: 50.0,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GestureDetector(
              onTap: () {
                // Handle the tap event for the image button
                print('ImageButton tapped');
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 10, 10, 10),
                child: Image.asset(
                  './lib/assets/disc.png',
                  fit: BoxFit.cover,
                  height: 120, // Set the height of the image button
                  width: double
                      .infinity, // Set the width of the image button to match parent
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(120, 10, 5, 10),
              child: Row(
                children: [
                  ClickableText(
                    text: 'Elektronik',
                    isSelected: _selectedText == 'Elektronik',
                    onTap: () {
                      setState(() {
                        _selectedText = 'Elektronik';
                      });
                    },
                  ),
                  ClickableText(
                    text: 'Sepatu',
                    isSelected: _selectedText == 'Sepatu',
                    onTap: () {
                      setState(() {
                        _selectedText = 'Sepatu';
                      });
                    },
                  ),
                  ClickableText(
                    text: 'Baju',
                    isSelected: _selectedText == 'Baju',
                    onTap: () {
                      setState(() {
                        _selectedText = 'Baju';
                      });
                    },
                  ),
                  ClickableText(
                    text: 'Meja',
                    isSelected: _selectedText == 'Meja',
                    onTap: () {
                      setState(() {
                        _selectedText = 'Meja';
                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Wrap(
              spacing: 20, // Gap between cards
              runSpacing: 8, // Gap between rows
              children: items.map((item) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Detail()));
                  },
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 2 -
                        10, // Make each card take half of the screen width
                    child: Card(
                      color: _cardColor,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              item[0], // Accessing image path from items
                              height: 150,
                              width: double.infinity,
                            ),
                            const SizedBox(
                                height:
                                    8), // Add spacing between image and text
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                item[1], // Accessing text from items
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                item[2], // Accessing text from items
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 2, 2, 2),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Set type to fixed
        backgroundColor: const Color.fromARGB(
            255, 193, 24, 24), // Set the background color here
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded), // Add your new icon here
            label: 'Profile', // Add the label for the new icon
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        unselectedItemColor: Color.fromARGB(207, 0, 0, 0),
        onTap: _onItemTapped,
      ),
    );
  }
}

class ClickableText extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const ClickableText({
    Key? key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(
          text,
          style: TextStyle(
              color: isSelected
                  ? const Color.fromARGB(255, 0, 0, 0)
                  : const Color.fromARGB(255, 0, 0, 0),
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal),
        ),
      ),
    );
  }
}