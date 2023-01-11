import 'package:csc_picker/model/select_status_model.dart';
import 'package:farmers_network_screens/helpers/marketHelper.dart';
import 'package:farmers_network_screens/widgets/CustomAppBar_details.dart';
import 'package:farmers_network_screens/widgets/CustomDropdown.dart';
import 'package:farmers_network_screens/widgets/SimulatorData.dart';
import 'package:farmers_network_screens/widgets/SimulatorRightData.dart';
import 'package:farmers_network_screens/widgets/countryPicker.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

class SimulatorPage extends StatefulWidget {
  const SimulatorPage({Key? key}) : super(key: key);

  @override
  State<SimulatorPage> createState() => _SimulatorPageState();
}

class _SimulatorPageState extends State<SimulatorPage>
    with SingleTickerProviderStateMixin {
  late TabController _myTabController;
  final Color? _color = Color.fromARGB(162, 181, 237, 182);
  bool? selectedIndex;
  var selectedItemState = 0;

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
    final cropL = Provider.of<MarketProdHelper>(context).cropList;
    final stockL = Provider.of<StockProdHelper>(context).LiveStock;

    return Scaffold(
        appBar: const CustomAppbar_Details(
          backgroundColor: Color.fromARGB(183, 26, 93, 27),
          title: 'Simulator',
        ),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 8.50),
                        child: Countries(),
                      ),
                      Container(
                        height: 40,
                        width: 160,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("Location"),
                              Icon(Icons.arrow_downward)
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.green[400],
                            borderRadius: BorderRadius.circular(3)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: 160,
                        child: const Padding(
                          padding: EdgeInsets.only(top: 10.0, left: 8),
                          child: Text("Units(2)"),
                        ),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 203, 204, 203),
                            borderRadius: BorderRadius.circular(3)),
                      ),
                      Container(
                        height: 40,
                        width: 160,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("Acres"),
                              Icon(Icons.arrow_downward)
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 203, 204, 203),
                            borderRadius: BorderRadius.circular(3)),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Farming Type"),
                ),
                SizedBox(
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                  child: TabBar(
                    splashFactory: NoSplash.splashFactory,
                    // physics: const NeverScrollableScrollPhysics(),
                    controller: _myTabController,
                    labelColor: Colors.black,
                    unselectedLabelColor: Color.fromARGB(255, 0, 0, 0),
                    indicatorPadding: const EdgeInsets.only(
                      left: 32,
                      right: 32,
                    ),
                    indicatorColor: Colors.transparent,
                    tabs: [
                      Container(
                        height: 30,
                        width: 230,
                        decoration: BoxDecoration(
                            color: Colors.amber[600],
                            borderRadius: BorderRadius.circular(3)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Tab(text: "Crop"),
                              Icon(Icons.arrow_downward)
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 230,
                        decoration: BoxDecoration(
                            color: Colors.green[400],
                            borderRadius: BorderRadius.circular(3)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Tab(text: "LiveStock"),
                              Icon(Icons.arrow_downward)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.blue,
                  child: TabBarView(
                    controller: _myTabController,
                    children: [
                      ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: cropL.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedItemState = index;
                                  });

                                  debugPrint(selectedIndex.toString());
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(5),
                                  height: 30,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: selectedItemState == index
                                          ? HexColor("#ed7d31")
                                          : _color,
                                      border: Border.all(
                                          width: 2, color: Colors.white),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(cropL[index].title),
                                      GestureDetector(
                                        child: Container(
                                          height: 20,
                                          width: 20,
                                          child: Image.asset(
                                            cropL[index].picture,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                      ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: stockL.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedItemState = index;
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(5),
                                  height: 30,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: selectedItemState == index
                                          ? Colors.amber[600]
                                          : _color,
                                      border: Border.all(
                                          width: 2, color: Colors.white),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(stockL[index].title),
                                      Container(
                                        height: 20,
                                        width: 20,
                                        child: Image.asset(
                                          stockL[index].image,
                                          fit: BoxFit.contain,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 10.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text("Add entry"),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.edit_sharp,
                        size: 14,
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [SimulatorWidget(), SimulatorRightWidget()],
                ),
              ]),
        ));
  }
}
