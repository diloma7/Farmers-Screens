import 'package:farmers_network_screens/NavigationSet/NavigatorPageClass.dart';
import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  final BottomNavigationController bottomController;

  const BottomBarWidget({Key? key, required this.bottomController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: bottomController,
        builder: (context, child) {
          return BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: const Color.fromARGB(255, 249, 249, 249),
              backgroundColor: const Color.fromARGB(252, 3, 79, 4),
              unselectedItemColor: const Color.fromARGB(255, 133, 130, 130),
              onTap: (index) {
                bottomController.changeTabIndex(index);
              },
              currentIndex: bottomController.currentTab,
              items: bottomController.navPages
                  .map((page) => BottomNavigationBarItem(
                      icon: Icon(page.navIcon, color: Colors.grey),
                      label: page.navLabel.toString()))
                  .toList());
        });
  }
}
