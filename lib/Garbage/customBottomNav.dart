// ignore_for_file: file_names, unused_import, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:farmers_network_screens/pages/Chat.dart';
import 'package:farmers_network_screens/pages/Chop.dart';
import 'package:farmers_network_screens/pages/MainHome.dart';
import 'package:farmers_network_screens/pages/Profile.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final selectedIndex;
  ValueChanged<int> onClicked;
  BottomNavBar({Key? key, this.selectedIndex, required this.onClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: Colors.grey),
            label: ('Home')),
        BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline_outlined, color: Colors.grey),
            label: ('Chat')),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined, color: Colors.grey),
            label: ('Market')),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: Colors.grey,
          ),
          label: ('Profile'),
        ),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedIndex,
      onTap: onClicked,
      selectedItemColor: const Color.fromARGB(255, 249, 249, 249),
      backgroundColor: const Color.fromARGB(252, 3, 79, 4),
      unselectedItemColor: const Color.fromARGB(255, 133, 130, 130),
    );
  }
}
