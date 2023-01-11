// ignore_for_file: file_names

import 'package:farmers_network_screens/pages/Business.dart';
import 'package:farmers_network_screens/pages/Production.dart';
import 'package:farmers_network_screens/pages/Provider.dart';
import 'package:farmers_network_screens/pages/Resource.dart';
import 'package:farmers_network_screens/pages/Simulator.dart';
import 'package:farmers_network_screens/pages/TrackMoney.dart';
import 'package:flutter/material.dart';

class MyEnterprise extends StatelessWidget {
  const MyEnterprise({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // margin: const EdgeInsets.only(left: 0, top: 5, right: 0),
      height: 120,
      width: MediaQuery.of(context).size.width,
      // color: Colors.blueAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: InkWell(
              child: Container(
                width: MediaQuery.of(context).size.width / 5,
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/futures.png',
                      height: 80,
                      width: 70,
                      fit: BoxFit.contain,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 5.0,
                      ),
                      child: Text(
                        "BUSINESS",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(178, 3, 79, 4),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BusinessPage()));
              },
            ),
          ),
          Expanded(
              flex: 2,
              child: InkWell(
                child: Container(
                  width: MediaQuery.of(context).size.width / 5,
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/field-and-tractor.png',
                        height: 80,
                        width: 70,
                        fit: BoxFit.contain,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 5.0,
                        ),
                        child: Text(
                          "PRODUCTION",
                          style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.w900,
                            color: Color.fromARGB(178, 3, 79, 4),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProductionPage()));
                },
              )),
          Expanded(
              flex: 2,
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProviderPage()));
                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width / 5,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset: const Offset(
                                0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/service.png',
                            height: 80,
                            width: 70,
                            fit: BoxFit.contain,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              top: 5.0,
                            ),
                            child: Text(
                              "PROVIDERS",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(178, 3, 79, 4),
                              ),
                            ),
                          )
                        ],
                      )))),
          Expanded(
              flex: 2,
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MoneyTracking()));
                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width / 5,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset: const Offset(
                                0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/debt - Copy.png',
                            height: 80,
                            width: 70,
                            fit: BoxFit.contain,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              top: 5.0,
                            ),
                            child: Text(
                              "TRACK MONEY",
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(178, 3, 79, 4),
                              ),
                            ),
                          )
                        ],
                      )))),
          Expanded(
            flex: 2,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SimulatorPage()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 5,
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/Stimulator.png',
                      height: 80,
                      width: 70,
                      fit: BoxFit.contain,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 5.0,
                      ),
                      child: Text(
                        "SIMULATOR",
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(178, 3, 79, 4),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
