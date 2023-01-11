import 'package:farmers_network_screens/helpers/PricePoint.dart';
import 'package:farmers_network_screens/widgets/CustomAppBar_details.dart';
import 'package:farmers_network_screens/widgets/lineChart.dart';
import 'package:flutter/material.dart';

class InvestmentDetailPage extends StatefulWidget {
  final String id;
  // final String title;
  final String image;
  final String description;
  final String description1;
  final String description2;
  final String description3;
  final String description4;
  final String description5;

  const InvestmentDetailPage(
      {Key? key,
      required this.id,
      // required this.title,
      required this.image,
      required this.description,
      required this.description1,
      required this.description2,
      required this.description3,
      required this.description4,
      required this.description5})
      : super(key: key);

  @override
  State<InvestmentDetailPage> createState() => _InvestmentDetailPageState();
}

class _InvestmentDetailPageState extends State<InvestmentDetailPage>
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
          backgroundColor: Color.fromARGB(178, 3, 79, 4), title: 'INVESTMENTS'),
      body: SingleChildScrollView(
        child: Expanded(
          child: Container(
            height: MediaQuery.of(context).orientation == Orientation.portrait
                ? MediaQuery.of(context).size.height
                : MediaQuery.of(context).size.height * 2.5,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  height: 120,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                      image: AssetImage(widget.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Text(widget.description),
                ),
                Container(
                  child: TabBar(
                    controller: _myTabController,
                    labelColor: Colors.green[900],
                    unselectedLabelColor: Colors.grey,
                    indicatorPadding:
                        const EdgeInsets.only(left: 32, right: 32),
                    indicatorColor: Colors.orange,
                    tabs: const [
                      Tab(text: "MY INVESTMENT"),
                      Tab(
                        text: "CONSULT EXPERT",
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height - 228,
                    width: MediaQuery.of(context).size.width,
                    child: TabBarView(
                      controller: _myTabController,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 25.0,
                            top: 25,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Investment Model: "),
                              const Text("High-Value Crop Farming."),
                              const Padding(
                                padding: EdgeInsets.only(left: 80.0),
                                child: Text(
                                    "Production cost per care \n Yield \n Return On Investment"),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const Text("Cultivation: "),
                              const Text(
                                  "Grow best in well-drained soils with a high organic matter content.."),
                              const Padding(
                                padding: EdgeInsets.only(left: 80.0),
                                child: Text(
                                    "Cultivation practices. \n Post-harvest handling \n Production schedule."),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: LineCartWidget(
                                    pricePoints, otherPoints, morePoints),
                              ),
                            ],
                          ),
                        ),
                        const Text("data"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
