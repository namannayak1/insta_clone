import 'package:flutter/material.dart';
import 'package:instagram_clone/Pages/account.dart';
import 'package:instagram_clone/Pages/home.dart';
import 'package:instagram_clone/Pages/newpost.dart';
import 'package:instagram_clone/Pages/reels.dart';
import 'package:instagram_clone/Pages/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    const UserHome(),
    const UserSearch(),
    const UserPost(),
    const UserReels(),
    const UserAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined), label: 'Post'),
          BottomNavigationBarItem(
              icon: Icon(Icons.missed_video_call_sharp), label: 'reels'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'account'),
        ],
      ),
    );
  }
}
