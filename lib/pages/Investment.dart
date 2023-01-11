// ignore_for_file: non_constant_identifier_names

import 'package:farmers_network_screens/helpers/InvestmentHelper.dart';
import 'package:farmers_network_screens/pages/InvestDetail.dart';
import 'package:farmers_network_screens/widgets/CustomAppBar_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InvestmentPage extends StatefulWidget {
  const InvestmentPage({Key? key}) : super(key: key);

  @override
  State<InvestmentPage> createState() => _InvestmentPageState();
}

class _InvestmentPageState extends State<InvestmentPage>
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
    final ListContent = Provider.of<InvestHelper>(context).List_content;
    return Scaffold(
      appBar: const CustomAppbar_Details(
        backgroundColor: Color.fromARGB(178, 3, 79, 4),
        title: 'INVESTMENTS',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      child: const Padding(
                        padding: EdgeInsets.only(
                          left: 8.0,
                        ),
                        child: Center(
                          child: Text(
                            "INVESTMENTS OPPORTUNITIES",
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ),
                      ),
                      height: 25,
                      width: 210,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 244, 123, 3),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      child: const Padding(
                        padding: EdgeInsets.only(left: 8.0, top: 5),
                        child: Text(
                          "My INVESTMENTS",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                      height: 25,
                      width: 210,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(214, 25, 103, 4),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: TabBar(
                labelColor: Colors.black87,
                unselectedLabelColor: Colors.grey,
                indicatorPadding: const EdgeInsets.only(left: 32, right: 32),
                indicatorColor: Colors.orange,
                controller: _myTabController,
                tabs: const [
                  Tab(text: "CROPS"),
                  Tab(
                    text: "Live Stock",
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height - 228,
              width: MediaQuery.of(context).size.width,
              child: TabBarView(
                controller: _myTabController,
                children: [
                  ListView.builder(
                    itemCount: ListContent.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => InvestmentDetailPage(
                                        id: ListContent[index].id,
                                        description:
                                            ListContent[index].description,
                                        description1:
                                            ListContent[index].description,
                                        description2:
                                            ListContent[index].description_2,
                                        description3:
                                            ListContent[index].description_3,
                                        description4:
                                            ListContent[index].description_4,
                                        description5:
                                            ListContent[index].description_5,
                                        image: ListContent[index].image),
                                  ),
                                );
                              },
                              child: SizedBox(
                                height: 100,
                                width: 100,
                                child: Image.asset(
                                    ListContent.elementAt(index).image),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: SizedBox(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      ListContent[index].description,
                                      style: TextStyle(
                                          color: Colors.green[900],
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      "Business Model: " +
                                          ListContent[index].description_1,
                                      style: TextStyle(
                                        color: Colors.orange[900],
                                      ),
                                    ),
                                    Text(
                                      ListContent[index].description_2,
                                      style: TextStyle(
                                        color: Colors.green[900],
                                      ),
                                    ),
                                    Text(
                                      ListContent[index].description_3,
                                      style: TextStyle(
                                        color: Colors.green[900],
                                      ),
                                    ),
                                    Text(
                                      ListContent[index].description_4,
                                      style: TextStyle(
                                        color: Colors.green[900],
                                      ),
                                    ),
                                    Text(
                                      ListContent[index].description_5,
                                      style: TextStyle(
                                          color: Colors.green[900],
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: GestureDetector(
                                        child: Container(
                                          height: 20,
                                          width: 120,
                                          decoration: BoxDecoration(
                                            color: Colors.green[900],
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(5),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: const [
                                              Text(
                                                "See more",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Icon(
                                                Icons.arrow_forward,
                                                size: 14,
                                                color: Colors.white,
                                              )
                                            ],
                                          ),
                                        ),
                                        onTap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  InvestmentDetailPage(
                                                      id: ListContent[index].id,
                                                      description:
                                                          ListContent[index]
                                                              .description,
                                                      description1:
                                                          ListContent[index]
                                                              .description,
                                                      description2:
                                                          ListContent[index]
                                                              .description_2,
                                                      description3:
                                                          ListContent[index]
                                                              .description_3,
                                                      description4:
                                                          ListContent[index]
                                                              .description_4,
                                                      description5:
                                                          ListContent[index]
                                                              .description_5,
                                                      image: ListContent[index]
                                                          .image),
                                            ),
                                          );
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                  ListView.builder(
                    itemCount: ListContent.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => InvestmentDetailPage(
                                        id: ListContent[index].id,
                                        description:
                                            ListContent[index].description,
                                        description1:
                                            ListContent[index].description,
                                        description2:
                                            ListContent[index].description_2,
                                        description3:
                                            ListContent[index].description_3,
                                        description4:
                                            ListContent[index].description_4,
                                        description5:
                                            ListContent[index].description_5,
                                        image: ListContent[index].image),
                                  ),
                                );
                              },
                              child: SizedBox(
                                height: 100,
                                width: 100,
                                child: Image.asset(
                                    ListContent.elementAt(index).image),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: SizedBox(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      ListContent[index].description,
                                      style: TextStyle(
                                          color: Colors.green[900],
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      "Business Model: " +
                                          ListContent[index].description_1,
                                      style: TextStyle(
                                        color: Colors.orange[900],
                                      ),
                                    ),
                                    Text(
                                      ListContent[index].description_2,
                                      style: TextStyle(
                                        color: Colors.green[900],
                                      ),
                                    ),
                                    Text(
                                      ListContent[index].description_3,
                                      style: TextStyle(
                                        color: Colors.green[900],
                                      ),
                                    ),
                                    Text(
                                      ListContent[index].description_4,
                                      style: TextStyle(
                                        color: Colors.green[900],
                                      ),
                                    ),
                                    Text(
                                      ListContent[index].description_5,
                                      style: TextStyle(
                                          color: Colors.green[900],
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: GestureDetector(
                                        child: Container(
                                          height: 20,
                                          width: 120,
                                          decoration: BoxDecoration(
                                            color: Colors.green[900],
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(5),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: const [
                                              Text(
                                                "See more",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Icon(
                                                Icons.arrow_forward,
                                                size: 14,
                                                color: Colors.white,
                                              )
                                            ],
                                          ),
                                        ),
                                        onTap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  InvestmentDetailPage(
                                                      id: ListContent[index].id,
                                                      description:
                                                          ListContent[index]
                                                              .description,
                                                      description1:
                                                          ListContent[index]
                                                              .description,
                                                      description2:
                                                          ListContent[index]
                                                              .description_2,
                                                      description3:
                                                          ListContent[index]
                                                              .description_3,
                                                      description4:
                                                          ListContent[index]
                                                              .description_4,
                                                      description5:
                                                          ListContent[index]
                                                              .description_5,
                                                      image: ListContent[index]
                                                          .image),
                                            ),
                                          );
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
