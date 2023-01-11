import 'package:farmers_network_screens/widgets/CustomAppBar_details.dart';
import 'package:farmers_network_screens/widgets/MarketDashboards.dart';
import 'package:farmers_network_screens/widgets/countryPicker.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ProductionPage extends StatefulWidget {
  const ProductionPage({Key? key}) : super(key: key);

  @override
  State<ProductionPage> createState() => _ProductionPageState();
}

class _ProductionPageState extends State<ProductionPage>
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
        title: 'Production',
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
                          Icon(
                            Icons.arrow_downward,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: HexColor("#a9d18e"),
                        borderRadius: BorderRadius.circular(3)),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 200, top: 8, bottom: 8),
              child: Text(
                "FARMING TYPE",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),

            //tabbar items
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
                        color: HexColor("#ffd966"),
                        borderRadius: BorderRadius.circular(3)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Tab(text: "Crop"),
                          Icon(
                            Icons.arrow_downward,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 230,
                    decoration: BoxDecoration(
                        color: HexColor("#a9d18e"),
                        borderRadius: BorderRadius.circular(3)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Tab(text: "LiveStock"),
                          Icon(
                            Icons.arrow_downward,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                right: 200,
                top: 8.0,
                bottom: 8,
              ),
              child: Text(
                "My DASHBOARD",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),

            // TabbarView container
            Container(
              height: 270,
              width: MediaQuery.of(context).size.width,
              // color: Colors.green,
              child: TabBarView(
                controller: _myTabController,
                children: [
                  ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return const Padding(
                            padding: EdgeInsets.all(3.0), child: MarketDash());
                      }),
                  ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return const Padding(
                            padding: EdgeInsets.all(3.0), child: MarketDash());
                      }),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 180, bottom: 8, top: 8),
              child: Text(
                "MARKET DASHBOARD",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const MarketDash(),
          ],
        ),
      ),
    );
  }
}
