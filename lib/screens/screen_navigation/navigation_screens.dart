import 'package:ecoearn/screens/home/home_screen.dart';
import 'package:ecoearn/screens/learn/learn.dart';
import 'package:ecoearn/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class NavigationScreens extends StatefulWidget {
  const NavigationScreens({super.key});

  @override
  State<NavigationScreens> createState() => _NavigationScreensState();
}

class _NavigationScreensState extends State<NavigationScreens> {
  int _currentIndex = 0;
  List<Widget> body = [
    const HomeScreen(),
    const LearnScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        selectedItemColor: const Color(0xFF2E7D32),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: _buildNavItem(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _buildNavItem(Icons.lightbulb_outline),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: _buildNavItem(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: Colors.grey,
      ),
    );
  }
}
