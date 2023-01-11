// ignore_for_file: file_names, avoid_unnecessary_containers

import 'package:farmers_network_screens/widgets/Carousel.dart';
import 'package:farmers_network_screens/widgets/Enterprise.dart';
import 'package:farmers_network_screens/widgets/Reports.dart';
import 'package:farmers_network_screens/widgets/Service.dart';
import 'package:farmers_network_screens/widgets/SideDrawer.dart';
// import 'package:farmers_network_screens/widgets/SideDrawer.dart';
// import 'package:farmers_network_screens/widgets/SideDrawer.dart';
import 'package:farmers_network_screens/widgets/customApp.dart';
import 'package:flutter/material.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawerEnableOpenDragGesture: false,
      appBar: AppBar(
        toolbarHeight: 100,
        title: Column(
          children: [
            Image.asset(
              'assets/images/login.png',
            ),
            const Text("Welcome user 1")
          ],
        ),
        backgroundColor: const Color.fromARGB(183, 26, 93, 27),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 20),
            child: Column(
              children: [
                const Icon(Icons.notifications),
                const SizedBox(
                  height: 35,
                ),
                InkWell(
                  onTap: () {
                    _scaffoldKey.currentState!.openEndDrawer();
                  },
                  child: const Icon(Icons.menu),
                ),
              ],
            ),
          )
        ],
      ),
      extendBody: true,
      endDrawer: const SideDrawerWidget(),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).orientation == Orientation.portrait
              ? MediaQuery.of(context).size.height + 50
              : MediaQuery.of(context).size.height * 2.1,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 5, left: 20),
                child: Text(
                  'NEWS',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(178, 3, 79, 4),
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                height: 120,
                padding: const EdgeInsets.only(left: 10, top: 5, right: 10),
                width: MediaQuery.of(context).size.width,
                // color: Colors.black,
                child: const ImageCarousel(),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 5, left: 20),
                child: Text(
                  "My REPORTS",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(178, 3, 79, 4),
                      fontWeight: FontWeight.w500),
                ),
              ),
              const MyReports(),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 5.0, bottom: 5, left: 20),
                    child: Text(
                      "MY ENTERPRISE",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(178, 3, 79, 4),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 10.0),
                      height: 35,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.green[700],
                          border: Border.all(
                            color: const Color.fromARGB(255, 255, 254, 254),
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8))),
                      // color: Colors.blue,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Text('Download Reports',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.download_sharp,
                              size: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const MyEnterprise(),
              const Services(),
            ],
          ),
        ),
      ),
    );
  }
}
