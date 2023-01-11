// ignore_for_file: non_constant_identifier_names, dead_code

// import 'dart:html';
import 'package:badges/badges.dart';
import 'package:farmers_network_screens/helpers/CartHelper.dart';
import 'package:farmers_network_screens/helpers/ProductHelper.dart';
import 'package:farmers_network_screens/pages/Detail.dart';
// import 'package:farmers_network_screens/models/shopProducts.dart';
import 'package:farmers_network_screens/pages/Invoice.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    final GridContent = Provider.of<ProductHelper>(context).Grid_Content;
    final cartContent = Provider.of<CartHelperClass>(context);
    // bool _isTaped = false;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Shopping Center'),
        // automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(183, 26, 93, 27),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Badge(
                  // animationType: BadgeAnimationType.scale,
                  toAnimate: false,
                  badgeContent: Text(
                    cartContent.cart_items.length.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  position: BadgePosition.topEnd(top: -5, end: 1.5),
                  child: IconButton(
                    onPressed: () => {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const InvoicePage(),
                        ),
                      ),
                    },
                    icon: const Icon(Icons.shopping_cart),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 260,
            crossAxisCount: 2,
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
                  color: Color.fromARGB(9, 112, 110, 110),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                                id: GridContent[index].id,
                                title: GridContent[index].title,
                                price: GridContent[index].price,
                                image: GridContent[index].image),
                          ),
                        ),
                        child: SizedBox(
                          height: 150,
                          child: ClipRRect(
                            child: Image.asset(GridContent[index].image),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      child: Text(GridContent[index].title),
                    ),
                    Text(GridContent[index].price.toString()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_border_outlined,
                            color: Color.fromARGB(255, 30, 28, 28),
                          ),
                        ),
                        IconButton(
                          highlightColor: const Color.fromARGB(255, 4, 70, 15),
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
                            color: const Color.fromARGB(255, 18, 17, 17),
                          ),
                        ),
                      ],
                    )
                  ],
                ));
          },
        ),
      ),
    );
  }
}
