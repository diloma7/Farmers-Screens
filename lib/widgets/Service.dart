import 'package:farmers_network_screens/pages/CalenderPage.dart';
import 'package:farmers_network_screens/pages/Community.dart';
import 'package:farmers_network_screens/pages/Investment.dart';
import 'package:farmers_network_screens/pages/Market.dart';
import 'package:farmers_network_screens/pages/Resource.dart';
import 'package:farmers_network_screens/pages/TrackMoney.dart';
import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  const Services({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 0, top: 5, right: 0),
      height: 150,
      width: MediaQuery.of(context).size.width,
      // color: Colors.blueAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: InkWell(
              child: Container(
                width: MediaQuery.of(context).size.width / 5,
                margin: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0, bottom: 6),
                      child: Text(
                        "INVESTMENT",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(178, 3, 79, 4),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          // margin: const EdgeInsets.only(bottom: 3),
                          width: 25,
                          height: 25,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                            // color: Color.fromARGB(255, 189, 14, 1),
                          ),
                          child: const Icon(
                            Icons.info_outline,
                            color: Color.fromARGB(255, 159, 2, 2),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 90,
                      // width: 150,
                      child: Image.asset(
                        'assets/images/Img/iStock-1442696346.jpg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InvestmentPage()));
              },
            ),
          ),
          Expanded(
              flex: 2,
              child: InkWell(
                child: Container(
                  width: MediaQuery.of(context).size.width / 5,
                  margin: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 5.0, bottom: 6),
                        child: Text(
                          "RESOURCES",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(178, 3, 79, 4),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            // margin: const EdgeInsets.only(bottom: 3),
                            width: 25,
                            height: 25,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                              // color: Color.fromARGB(255, 189, 14, 1),
                            ),
                            child: const Icon(
                              Icons.info_outline,
                              color: Color.fromARGB(255, 159, 2, 2),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 90,
                        // width: 150,
                        child: Image.asset(
                          'assets/images/iStock-1223021697.jpg',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ResourcesPage()));
                },
              )),
          Expanded(
            flex: 2,
            child: InkWell(
              child: Container(
                width: MediaQuery.of(context).size.width / 5,
                margin: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0, bottom: 6),
                      child: Text(
                        "COMMUNITY",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(178, 3, 79, 4),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          // margin: const EdgeInsets.only(bottom: 3),
                          width: 25,
                          height: 25,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                            // color: Color.fromARGB(255, 189, 14, 1),
                          ),
                          child: const Icon(
                            Icons.info_outline,
                            color: Color.fromARGB(255, 159, 2, 2),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 90,
                      // width: 150,
                      child: Image.asset(
                        'assets/images/iStock-1150928206.jpg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Forum(),
                  ),
                );
              },
            ),
          ),
          Expanded(
            flex: 2,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CalenderPage()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 5,
                margin: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0, bottom: 6),
                      child: Text(
                        "CALENDER",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(178, 3, 79, 4),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      height: 90,
                      // width: 150,
                      child: Image.asset(
                        'assets/images/calendar-2023-year-december-month-neomorphism-style-planner-template-vector-illustration-eps.jpg_s=1024x1024&w=is&k=20&c=ospIRZwAnqXQFPYALLNeBCbD60gbD9I0OYl6Z_0IMFk=.jpg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
