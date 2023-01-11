import 'package:farmers_network_screens/helpers/PricePoint.dart';
import 'package:farmers_network_screens/pages/FarmersBarChart.dart';
import 'package:farmers_network_screens/widgets/BusinessData.dart';
import 'package:farmers_network_screens/widgets/CustomAppBar_details.dart';
import 'package:farmers_network_screens/widgets/lineChart.dart';
import 'package:flutter/material.dart';

class BusinessPage extends StatefulWidget {
  const BusinessPage({Key? key}) : super(key: key);

  @override
  State<BusinessPage> createState() => _BusinessPageState();
}

class _BusinessPageState extends State<BusinessPage>
    with SingleTickerProviderStateMixin {
  late TabController _myTabController;
  @override
  void initState() {
    super.initState();
    _myTabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _myTabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar_Details(
        backgroundColor: Color.fromARGB(183, 26, 93, 27),
        title: 'Business Place',
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).orientation == Orientation.portrait
              ? MediaQuery.of(context).size.height * 1.5
              : MediaQuery.of(context).size.height * 2.5,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                child: TabBar(
                  // physics: const NeverScrollableScrollPhysics(),
                  controller: _myTabController,
                  labelColor: Colors.green[900],
                  unselectedLabelColor: Colors.grey,
                  indicatorPadding: const EdgeInsets.only(
                    left: 32,
                    right: 32,
                  ),
                  indicatorColor: Colors.orange,
                  tabs: const [
                    Tab(text: "CASH OUT (EXPENCES)"),
                    Tab(
                      text: "CASH IN (REVENUES )",
                    )
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height - 50,
                  width: MediaQuery.of(context).size.width,
                  child: TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: _myTabController,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 5.0,
                          top: 25,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const FarmBarChart(),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    width: 200,
                                    // color: Colors.blue,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text("Plan"),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          height: 25,
                                          width: 120,
                                          decoration: BoxDecoration(
                                              color: Colors.amber[600],
                                              borderRadius:
                                                  BorderRadius.circular(3)),
                                          child: const Center(
                                              child: Text(
                                            "\$ 2,000",
                                          )),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 20.0),
                                  child: Text(
                                    "Vs",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w800),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    width: 200,
                                    // color: Colors.blue,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text("Actual"),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                            height: 25,
                                            width: 130,
                                            decoration: BoxDecoration(
                                                color: Colors.green[700],
                                                borderRadius:
                                                    BorderRadius.circular(3)),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0, right: 8.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  const Center(
                                                    child: Text(
                                                      "\$ 2,000",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Row(
                                                      children: const [
                                                        Icon(
                                                          Icons.call_received,
                                                          size: 14,
                                                          color: Colors.white,
                                                        ),
                                                        Text(
                                                          "15%",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Expanded(
                              flex: 1,
                              child: BusinessDataWidget(),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 38.0, top: 10, bottom: 10, right: 40),
                              child: Container(
                                height: 100,
                                width: 400,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text("Comments: "),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                          "Low rain fall in Central, affected production SL 28 Variety more resilient seen rise in production"),
                                    ],
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: const Color.fromARGB(
                                        179, 191, 189, 189)),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Center(child: Text("data")),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
