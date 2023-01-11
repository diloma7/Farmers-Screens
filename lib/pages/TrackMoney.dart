// ignore_for_file: file_names

import 'package:farmers_network_screens/helpers/CartHelper.dart';
import 'package:farmers_network_screens/widgets/CustomAppBar_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MoneyTracking extends StatelessWidget {
  const MoneyTracking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartContent = Provider.of<CartHelperClass>(context);
    // final items = cartContent.cart_items;
    return Scaffold(
      appBar: const CustomAppbar_Details(
        backgroundColor: Color.fromARGB(178, 3, 79, 4),
        title: 'Track Money',
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("CASH MANAGEMENT"),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          height: 65,
                          width: 150,
                          color: const Color.fromARGB(255, 236, 235, 235),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Column(
                                children: [
                                  Text(
                                    "\$" + cartContent.totalDue.toString(),
                                    style: TextStyle(color: Colors.redAccent),
                                  ),
                                  const SizedBox(
                                    height: 7.5,
                                  ),
                                  Container(
                                    height: 25,
                                    width: 110,
                                    child: const Center(
                                      child: Text(
                                        "+120 Days",
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.white),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent,
                                        borderRadius: BorderRadius.circular(5)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Container(
                          height: 65,
                          width: 150,
                          color: const Color.fromARGB(255, 236, 235, 235),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Column(
                                children: [
                                  const Text(
                                    "\$ 7,700",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 250, 221, 1)),
                                  ),
                                  const SizedBox(
                                    height: 7.5,
                                  ),
                                  Container(
                                    height: 25,
                                    width: 110,
                                    child: const Center(
                                      child: Text(
                                        "+90 Days",
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.white),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 250, 221, 1),
                                        borderRadius: BorderRadius.circular(5)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Container(
                          height: 65,
                          width: 150,
                          color: const Color.fromARGB(255, 236, 235, 235),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Column(
                                children: [
                                  const Text(
                                    "\$ 3500",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 23, 111, 7)),
                                  ),
                                  const SizedBox(
                                    height: 7.5,
                                  ),
                                  Container(
                                    height: 25,
                                    width: 110,
                                    child: const Center(
                                      child: Text(
                                        "+120 Days",
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.white),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 23, 111, 7),
                                        borderRadius: BorderRadius.circular(5)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 5, right: 8),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  // color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            child: const Padding(
                              padding: EdgeInsets.only(left: 8.0, top: 5),
                              child: Text(
                                "DEBTORS",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                            ),
                            height: 25,
                            width: 210,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 220, 206, 5),
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
                                "CREDITORS",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                            ),
                            height: 25,
                            width: 210,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(124, 67, 216, 26),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? MediaQuery.of(context).size.height - 220
                          : MediaQuery.of(context).size.height * 1.5,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
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
                              height: 440,
                              width: 120,
                              // color: Colors.blueGrey,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    //image container
                                    child: Container(
                                      height: 60,
                                      width: 200,
                                      color: Colors.white,
                                      child: ClipRRect(
                                        child: Image.asset(
                                          'assets/images/Dallan_farm.jpg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Text("Dallan Farm"),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Divider(
                                      height: 1,
                                      thickness: 5,
                                      color: Color.fromARGB(200, 6, 107, 10),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text("Invoice No: \nFN 1234"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: cartContent.cart_items.isNotEmpty
                                        ? Text("Description: \n1: " +
                                            cartContent.cart_items.values
                                                .elementAt(0)
                                                .title
                                                .toString() +
                                            "\n2: " +
                                            cartContent.cart_items.values
                                                .elementAt(1)
                                                .title
                                                .toString() +
                                            "\n3: " +
                                            cartContent.cart_items.values
                                                .elementAt(2)
                                                .title
                                                .toString())
                                        : const Text("Description: \n1: "
                                            "\n2: "
                                            "\n3: "),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        "Amount: \n \$ ${cartContent.totalDue}"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text("Due Date: \n" +
                                        DateTime.now().toString()),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              color: Colors.red),
                                        ),
                                        const Icon(
                                          Icons.messenger_outline,
                                          color: Color.fromARGB(171, 8, 68, 10),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
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
                              height: 440,
                              width: 120,
                              // color: Colors.blueGrey,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    //image container
                                    child: Container(
                                      height: 60,
                                      width: 200,
                                      color: Colors.white,
                                      child: ClipRRect(
                                        child: Image.asset(
                                          'assets/images/Dallan_farm.jpg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Text("Dallan Farm"),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Divider(
                                      height: 1,
                                      thickness: 5,
                                      color: Color.fromARGB(200, 6, 107, 10),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text("Invoice No: \nFN 1234"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Description: \n1: " +
                                        cartContent.cart_items.values
                                            .elementAt(0)
                                            .title
                                            .toString() +
                                        "\n2: " +
                                        cartContent.cart_items.values
                                            .elementAt(1)
                                            .title
                                            .toString() +
                                        "\n3: " +
                                        cartContent.cart_items.values
                                            .elementAt(2)
                                            .title
                                            .toString()),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        "Amount: \n \$ ${cartContent.totalDue}"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text("Due Date: \n" +
                                        DateTime.now().toString()),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              color: Colors.red),
                                        ),
                                        const Icon(
                                          Icons.messenger_outline,
                                          color: Color.fromARGB(171, 8, 68, 10),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
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
                              height: 440,
                              width: 120,
                              // color: Colors.blueGrey,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    //image container
                                    child: Container(
                                      height: 60,
                                      width: 200,
                                      color: Colors.white,
                                      child: ClipRRect(
                                        child: Image.asset(
                                          'assets/images/Dallan_farm.jpg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Text("Dallan Farm"),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Divider(
                                      height: 1,
                                      thickness: 5,
                                      color: Color.fromARGB(200, 6, 107, 10),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text("Invoice No: \nFN 1234"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Description: \n1: " +
                                        cartContent.cart_items.values
                                            .elementAt(0)
                                            .title
                                            .toString() +
                                        "\n2: " +
                                        cartContent.cart_items.values
                                            .elementAt(1)
                                            .title
                                            .toString() +
                                        "\n3: " +
                                        cartContent.cart_items.values
                                            .elementAt(2)
                                            .title
                                            .toString()),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        "Amount: \n \$ ${cartContent.totalDue}"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text("Due Date: \n" +
                                        DateTime.now().toString()),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              color: Colors.red),
                                        ),
                                        const Icon(
                                          Icons.messenger_outline,
                                          color: Color.fromARGB(171, 8, 68, 10),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 3.0, left: 8.5, right: 8.5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Container(
                                height: 25,
                                width: 110,
                                child: const Center(
                                  child: Text(
                                    "Rate",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 242, 226, 6),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                height: 25,
                                width: 110,
                                child: const Center(
                                  child: Text(
                                    "Rate",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 17, 124, 7),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                height: 25,
                                width: 110,
                                child: const Center(
                                  child: Text(
                                    "Rate",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 17, 124, 7),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                            )
                          ],
                        ),
                      )
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
