import 'package:farmers_network_screens/helpers/CartHelper.dart';
import 'package:farmers_network_screens/pages/TrackMoney.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InvoicePage extends StatelessWidget {
  const InvoicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartContent = Provider.of<CartHelperClass>(context).cart_items;
    // final itemsTitle = cartContent.forEach((key, value) => value.title);
//cartContent.values.elementAt(index).title
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Invoice Page'),
        backgroundColor: const Color.fromARGB(183, 26, 93, 27),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 15.0),
        child: SafeArea(
          maintainBottomViewPadding: true,
          child: Container(
            height: MediaQuery.of(context).orientation == Orientation.portrait
                ? MediaQuery.of(context).size.height + 120
                : MediaQuery.of(context).size.height * 2.1,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 5.0,
                    right: 5.0,
                  ),
                  child: Container(
                    height: 50,
                    width: 220,
                    color: Colors.purple,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Invoice Number: ",
                          style: TextStyle(
                              color: Color.fromARGB(178, 3, 79, 4),
                              fontWeight: FontWeight.w500)),
                      Container(
                        height: 30,
                        width: 160,
                        color: const Color.fromARGB(255, 245, 177, 4),
                        child: const Center(
                          child: Text(
                            "days Overdue: ",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(1),
                          spreadRadius: 3,
                          blurRadius: 2,
                          offset:
                              const Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    height: 190,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              const Text("Amount Due",
                                  style: TextStyle(
                                      color: Color.fromARGB(178, 3, 79, 4),
                                      fontWeight: FontWeight.w500)),
                              Container(
                                height: 35,
                                width: 100,
                                color: const Color.fromARGB(67, 166, 169, 169),
                                child: Center(
                                  child: Text(
                                      "\$ " +
                                          Provider.of<CartHelperClass>(context)
                                              .totalDue
                                              .toString(),
                                      style: const TextStyle(
                                          color: Color.fromARGB(178, 3, 79, 4),
                                          fontWeight: FontWeight.w500)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  const Text('Issued on',
                                      style: TextStyle(
                                          color: Color.fromARGB(178, 3, 79, 4),
                                          fontWeight: FontWeight.w500)),
                                  Container(
                                    height: 35,
                                    width: 130,
                                    color:
                                        const Color.fromARGB(67, 166, 169, 169),
                                    child: Center(
                                      child: Text(DateTime.now().toString(),
                                          style: const TextStyle(
                                              color:
                                                  Color.fromARGB(178, 3, 79, 4),
                                              fontWeight: FontWeight.w500)),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  const Text('Due on',
                                      style: TextStyle(
                                          color: Color.fromARGB(178, 3, 79, 4),
                                          fontWeight: FontWeight.w500)),
                                  Container(
                                    height: 35,
                                    width: 130,
                                    color:
                                        const Color.fromARGB(67, 166, 169, 169),
                                    child: Center(
                                      child: Text(DateTime.now().day.toString(),
                                          style: const TextStyle(
                                              color:
                                                  Color.fromARGB(178, 3, 79, 4),
                                              fontWeight: FontWeight.w500)),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ) // Issued and due date
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Items",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(178, 3, 79, 4),
                          fontWeight: FontWeight.w500)),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: cartContent.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 80,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                              // color: Colors.blue,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      height: 50,
                                      child: Row(
                                        children: [
                                          Image.asset(cartContent.values
                                              .elementAt(index)
                                              .image),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Text(
                                                cartContent.values
                                                    .elementAt(index)
                                                    .title,
                                                style: const TextStyle(
                                                    color: Color.fromARGB(
                                                        178, 3, 79, 4),
                                                    fontWeight:
                                                        FontWeight.w500)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ), // image and title
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            color: const Color.fromARGB(
                                                64, 158, 158, 158),
                                            height: 30,
                                            width: 130,
                                            child: Center(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Quantity:  " +
                                                        cartContent.values
                                                            .elementAt(index)
                                                            .qtity
                                                            .toString(),
                                                    style: const TextStyle(
                                                        color: Color.fromARGB(
                                                            178, 3, 79, 4),
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  const Icon(
                                                      Icons.arrow_downward,
                                                      color: Color.fromARGB(
                                                          178, 3, 79, 4))
                                                ],
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 1.5,
                                          ),
                                          Container(
                                            height: 30,
                                            width: 130,
                                            color: const Color.fromARGB(
                                                59, 158, 158, 158),
                                            child: Center(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                      "Amount:  " +
                                                          cartContent.values
                                                              .elementAt(index)
                                                              .price
                                                              .toString(),
                                                      style: const TextStyle(
                                                          color: Color.fromARGB(
                                                              178, 3, 79, 4),
                                                          fontWeight:
                                                              FontWeight.w500)),
                                                  const Icon(
                                                      Icons.arrow_downward,
                                                      color: Color.fromARGB(
                                                          178, 3, 79, 4))
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ) //Qtity and price
                                ],
                              ),
                            ),
                            const Divider(
                              thickness: 1,
                              height: 0.5,
                              color: Color.fromARGB(255, 20, 91, 8),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("VAT 16%",
                              style: TextStyle(
                                  color: Color.fromARGB(178, 3, 79, 4),
                                  fontWeight: FontWeight.w500)),
                          Container(
                            height: 35,
                            width: 130,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(67, 166, 169, 169),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Center(
                              child: Text(
                                  "Total: " "\$ " +
                                      Provider.of<CartHelperClass>(context)
                                          .totalDue
                                          .toString(),
                                  style: const TextStyle(
                                      color: Color.fromARGB(178, 3, 79, 4),
                                      fontWeight: FontWeight.w500)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Notes",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(178, 3, 79, 4),
                          fontWeight: FontWeight.w500)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.purple,
                    child: const Center(
                      child: Text("Provision for more information",
                          style: TextStyle(
                              color: Color.fromARGB(178, 3, 79, 4),
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 35,
                        width: 130,
                        decoration: const BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: const Center(
                          child: Text("Cancel Invoice",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700)),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => MoneyTracking(),
                          ),
                        ),
                        child: Container(
                          height: 35,
                          width: 130,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(181, 2, 57, 4),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: const Center(
                            child: Text(
                              "Send Invoice",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
