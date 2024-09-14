import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StatefulShellWithBottomBarView extends StatelessWidget {
  const StatefulShellWithBottomBarView({super.key, required this.child});

  final StatefulNavigationShell child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add),
            label: 'Posts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: child.currentIndex,
        onTap: (index) => child.goBranch(index),
      ),
    );
  }
}
