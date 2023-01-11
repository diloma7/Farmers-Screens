// ignore_for_file: file_names

import 'package:farmers_network_screens/pages/Chat.dart';
import 'package:farmers_network_screens/pages/MainHome.dart';
import 'package:farmers_network_screens/pages/Market.dart';
import 'package:farmers_network_screens/pages/Profile.dart';
import 'package:farmers_network_screens/widgets/customApp.dart';
import 'package:farmers_network_screens/Garbage/customBottomNav.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedPage = 0;
  final _pageOptions = const [
    MainHomePage(),
    ChatRoom(),
    MarketPage(),
    ProfilePage(),
  ];

  void onClicked(int index) {
    setState(() {
      selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: Image.asset(
          'assets/images/login.png',
          // height: 60,
          fit: BoxFit.fitHeight,
        ),
        backgroundColor: const Color.fromARGB(183, 26, 93, 27),
      ),
      body: _pageOptions.elementAt(selectedPage),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: selectedPage,
        onClicked: onClicked,
      ),
    );
  }
}
