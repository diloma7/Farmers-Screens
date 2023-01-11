import 'package:farmers_network_screens/helpers/CartHelper.dart';
import 'package:farmers_network_screens/helpers/ProductHelper.dart';
import 'package:farmers_network_screens/helpers/marketHelper.dart';
import 'package:farmers_network_screens/pages/Chop.dart';
import 'package:farmers_network_screens/pages/Detail.dart';
import 'package:farmers_network_screens/widgets/CustomAppBar_details.dart';
import 'package:farmers_network_screens/widgets/countryPicker.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({Key? key}) : super(key: key);

  @override
  State<MarketPage> createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> with TickerProviderStateMixin {
  late TabController _myTabController;
  late TabController _myTabController2;
  final Color? _color = Color.fromARGB(162, 181, 237, 182);
  bool? selectedIndex;
  var selectedItemState = 0;

  @override
  void initState() {
    super.initState();
    _myTabController = TabController(length: 2, vsync: this);
    _myTabController2 = TabController(length: 2, vsync: this);
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
    final GridContent = Provider.of<ProductHelper>(context).Grid_Content;
    final cartContent = Provider.of<CartHelperClass>(context);
    return Scaffold(
        appBar: const CustomAppbar_Details(
          backgroundColor: Color.fromARGB(183, 26, 93, 27),
          title: 'Market Place',
        ),
        body: SingleChildScrollView(
          child: Column(
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
                          children: [
                            Text("Add to cart" "(" +
                                cartContent.cart_items.length.toString() +
                                ")"),
                            const Icon(Icons.shopping_cart_outlined)
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: HexColor("#ffd966"),
                          borderRadius: BorderRadius.circular(3)),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 40,
                      width: 160,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Location"),
                            Icon(Icons.arrow_downward_rounded)
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
              SizedBox(
                height: 30,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20.0, left: 20),
                  child: Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(width: 1, color: Colors.green))),
                    child: TabBar(
                      splashFactory: NoSplash.splashFactory,
                      controller: _myTabController2,
                      labelColor: Colors.black,
                      unselectedLabelColor: Color.fromARGB(255, 0, 0, 0),
                      indicatorWeight: 3.5,
                      indicatorPadding: const EdgeInsets.only(
                        top: 5,
                      ),
                      indicatorColor: HexColor("#ed7d31"),
                      tabs: const [
                        Tab(text: "PRODUCTS"),
                        Tab(text: "SERVICES"),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 30,
                width: MediaQuery.of(context).size.width,
                child: TabBar(
                  splashFactory: NoSplash.splashFactory,
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
                          color: Color.fromARGB(255, 249, 249, 249),
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
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
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
              ),
              SizedBox(
                height: 400,
                width: MediaQuery.of(context).size.width,
                child: TabBarView(
                  controller: _myTabController2,
                  children: [
                    GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 200,
                        crossAxisCount: 3,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemCount: GridContent.length,
                      itemBuilder: (context, index) {
                        return Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () => Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => DetailPage(
                                          id: GridContent[index].id,
                                          title: GridContent[index].title,
                                          price: GridContent[index].price,
                                          image: GridContent[index].image),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 2.0),
                                    child: SizedBox(
                                      height: 100,
                                      width: 100,
                                      child: ClipRRect(
                                        child: Image.asset(
                                            GridContent[index].image),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, bottom: 3),
                                  child: Text(GridContent[index].title),
                                ),
                                Text(
                                  "\$" +
                                      GridContent[index].price.toString() +
                                      "/kg",
                                  style: const TextStyle(
                                    color: Color.fromARGB(245, 201, 11, 11),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: const Icon(
                                        Icons.favorite,
                                        size: 12,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                    IconButton(
                                      highlightColor:
                                          const Color.fromARGB(255, 4, 70, 15),
                                      onPressed: () {
                                        cartContent.addItems(
                                            id: GridContent[index].id,
                                            title: GridContent[index].title,
                                            price: GridContent[index].price,
                                            image: GridContent[index].image);
                                      },
                                      // ignore: prefer_const_constructors
                                      icon: Icon(
                                        Icons.shopping_cart_outlined,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ));
                      },
                    ),
                    GridView.builder(
                      // shrinkWrap: true,
                      primary: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 310,
                        crossAxisCount: 1,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 10,
                      ),
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: const Color.fromARGB(
                                                      255, 113, 113, 113)
                                                  .withOpacity(0.5),
                                              spreadRadius: 3,
                                              blurRadius: 3,
                                              offset: const Offset(0,
                                                  2) // changes position of shadow
                                              ),
                                        ],
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 2.0),
                                            child: SizedBox(
                                              height: 100,
                                              width: 100,
                                              child: ClipRRect(
                                                child: Image.asset(
                                                    "assets/newImg/aggronomy-service.png"),
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(bottom: 3),
                                            child: Text(
                                                "Agronomy Service \nMaize cropFamin"),
                                          ),
                                          const Text(
                                            "USD 5",
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  245, 201, 11, 11),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    Icons
                                                        .messenger_outline_sharp,
                                                    color: Colors.green,
                                                  )),
                                              Container(
                                                width: 30,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    color: Colors.green,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50)),
                                                child: const Icon(
                                                  Icons.favorite,
                                                  size: 12,
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255),
                                                ),
                                              ),
                                              IconButton(
                                                highlightColor:
                                                    const Color.fromARGB(
                                                        255, 4, 70, 15),
                                                onPressed: () {
                                                  // cartContent.addItems(
                                                  //     id: GridContent[index].id,
                                                  //     title: GridContent[index]
                                                  //         .title,
                                                  //     price: GridContent[index]
                                                  //         .price,
                                                  //     image: GridContent[index]
                                                  //         .image);
                                                },
                                                // ignore: prefer_const_constructors
                                                icon: Icon(
                                                  Icons.shopping_cart_outlined,
                                                  color: Colors.green,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 80,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: const Color.fromARGB(
                                                      255, 113, 113, 113)
                                                  .withOpacity(0.5),
                                              spreadRadius: 3,
                                              blurRadius: 3,
                                              offset: const Offset(0,
                                                  2) // changes position of shadow
                                              ),
                                        ],
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 2.0),
                                            child: SizedBox(
                                              height: 100,
                                              width: 100,
                                              child: ClipRRect(
                                                child: Image.asset(
                                                    "assets/newImg/horticulture.png"),
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(bottom: 3),
                                            child: Text(
                                                "Agronomy Service \nHorticulture"),
                                          ),
                                          const Text(
                                            "USD 5",
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  245, 201, 11, 11),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    Icons
                                                        .messenger_outline_sharp,
                                                    color: Colors.green,
                                                  )),
                                              Container(
                                                width: 30,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    color: Colors.green,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50)),
                                                child: const Icon(
                                                  Icons.favorite,
                                                  size: 12,
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255),
                                                ),
                                              ),
                                              IconButton(
                                                highlightColor:
                                                    const Color.fromARGB(
                                                        255, 4, 70, 15),
                                                onPressed: () {
                                                  // cartContent.addItems(
                                                  //     id: GridContent[index].id,
                                                  //     title: GridContent[index]
                                                  //         .title,
                                                  //     price: GridContent[index]
                                                  //         .price,
                                                  //     image: GridContent[index]
                                                  //         .image);
                                                },
                                                // ignore: prefer_const_constructors
                                                icon: Icon(
                                                  Icons.shopping_cart_outlined,
                                                  color: Colors.green,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: const Color.fromARGB(
                                                      255, 113, 113, 113)
                                                  .withOpacity(0.5),
                                              spreadRadius: 3,
                                              blurRadius: 3,
                                              offset: const Offset(0,
                                                  2) // changes position of shadow
                                              ),
                                        ],
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 2.0),
                                            child: SizedBox(
                                              height: 100,
                                              width: 100,
                                              child: ClipRRect(
                                                child: Image.asset(
                                                    "assets/newImg/Page-10-Image-24.png"),
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(bottom: 3),
                                            child: Text(
                                                "Agronomy Service \nFruit Farming"),
                                          ),
                                          const Text(
                                            "USD 5",
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  245, 201, 11, 11),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    Icons
                                                        .messenger_outline_sharp,
                                                    color: Colors.green,
                                                  )),
                                              Container(
                                                width: 30,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    color: Colors.green,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50)),
                                                child: const Icon(
                                                  Icons.favorite,
                                                  size: 12,
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255),
                                                ),
                                              ),
                                              IconButton(
                                                highlightColor:
                                                    const Color.fromARGB(
                                                        255, 4, 70, 15),
                                                onPressed: () {
                                                  // cartContent.addItems(
                                                  //     id: GridContent[index].id,
                                                  //     title: GridContent[index]
                                                  //         .title,
                                                  //     price: GridContent[index]
                                                  //         .price,
                                                  //     image: GridContent[index]
                                                  //         .image);
                                                },
                                                // ignore: prefer_const_constructors
                                                icon: Icon(
                                                  Icons.shopping_cart_outlined,
                                                  color: Colors.green,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 80,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: const Color.fromARGB(
                                                      255, 113, 113, 113)
                                                  .withOpacity(0.5),
                                              spreadRadius: 3,
                                              blurRadius: 3,
                                              offset: const Offset(0,
                                                  2) // changes position of shadow
                                              ),
                                        ],
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 2.0),
                                            child: SizedBox(
                                              height: 100,
                                              width: 100,
                                              child: ClipRRect(
                                                child: Image.asset(
                                                    "assets/newImg/vegetable-farming.png"),
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(bottom: 3),
                                            child: Text(
                                                "Agronomy Service \nVegetable Farming"),
                                          ),
                                          const Text(
                                            "USD 5",
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  245, 201, 11, 11),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    Icons
                                                        .messenger_outline_sharp,
                                                    color: Colors.green,
                                                  )),
                                              Container(
                                                width: 30,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    color: Colors.green,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50)),
                                                child: const Icon(
                                                  Icons.favorite,
                                                  size: 12,
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255),
                                                ),
                                              ),
                                              IconButton(
                                                highlightColor:
                                                    const Color.fromARGB(
                                                        255, 4, 70, 15),
                                                onPressed: () {
                                                  // cartContent.addItems(
                                                  //     id: GridContent[index].id,
                                                  //     title: GridContent[index]
                                                  //         .title,
                                                  //     price: GridContent[index]
                                                  //         .price,
                                                  //     image: GridContent[index]
                                                  //         .image);
                                                },
                                                // ignore: prefer_const_constructors
                                                icon: Icon(
                                                  Icons.shopping_cart_outlined,
                                                  color: Colors.green,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
