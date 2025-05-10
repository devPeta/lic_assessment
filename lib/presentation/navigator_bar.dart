import 'package:flutter/material.dart';
import 'package:lic_assessment/presentation/challenge/challenge_page.dart' show ChallengePage;
import 'package:lic_assessment/presentation/home/homepage.dart' show HomePage;
import 'package:lic_assessment/presentation/practice/practice_page.dart' show PracticePage;

class LicNavigatorBar extends StatefulWidget {
  const LicNavigatorBar({Key? key}) : super(key: key);

  @override
  State<LicNavigatorBar> createState() => _LicNavigatorBarState();
}

class _LicNavigatorBarState extends State<LicNavigatorBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomePage(),
    PracticePage(),
    ChallengePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        shape: const CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavButton(Icons.home_outlined, 0),
              _buildNavButton(Icons.school_outlined, 1),
              _buildNavButton(Icons.note_outlined, 2),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavButton(IconData icon, int index) {
    final isSelected = _selectedIndex == index;

    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: isSelected
            ? BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blueAccent,
        )
            : BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white
        ),
        child: Center(
          child: Icon(
            icon,
            color: isSelected ? Colors.white : Colors.grey,
            size: 24,
          ),
        ),
      ),
    );
  }
}
