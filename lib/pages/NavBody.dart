// import 'dart:html';

// ignore_for_file: file_names


import 'package:farmers_network_screens/NavigationSet/NavigatorPageClass.dart';
import 'package:farmers_network_screens/pages/BottomBar.dart';
// import 'package:farmers_network_screens/widgets/customApp.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustumHomePage extends StatefulWidget {
  const CustumHomePage({Key? key}) : super(key: key);

  @override
  State<CustumHomePage> createState() => _CustumHomePageState();
}

class _CustumHomePageState extends State<CustumHomePage> {
  @override
  Widget build(BuildContext context) {
    var bottomController = BottomNavigationController()..init();
    bool keyboardIsOpen = MediaQuery.of(context).viewInsets.bottom != 0;
    return WillPopScope(
      onWillPop: () async {
        NavigatorState? currentNavState =
            bottomController.currentNavigatorPage.navKey.currentState;
        if (currentNavState?.canPop() ?? true) {
          currentNavState?.pop();

          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
            body: AnimatedBuilder(
            animation: bottomController,
            builder: (context, child) {
              return IndexedStack(
                index: bottomController.currentTab,
                children: bottomController.navPages
                    .map((page) => Navigator(
                          key: page.navKey,
                          onGenerateRoute: page.routes.getRoute,
                        ))
                    .toList(),
              );
            }),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 20,
          child: BottomBarWidget(
            bottomController: bottomController,
          ),
        ),
        floatingActionButton: Container(
          height: 70,
          width: 70,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(50))),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: FloatingActionButton(
              isExtended: true,
              mini: true,
              backgroundColor: HexColor("#175c19"),
              child: Image.asset("assets/newImg/pen.png"),
              onPressed: () {},
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
