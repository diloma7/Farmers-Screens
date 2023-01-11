import 'package:flutter/material.dart';

class MarketDash extends StatefulWidget {
  const MarketDash({Key? key}) : super(key: key);

  @override
  State<MarketDash> createState() => _MarketDashState();
}

class _MarketDashState extends State<MarketDash> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 265,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: 170,
              child: Column(
                children: [
                  Container(
                    height: 40,
                    width: 165,
                    color: Colors.green[900],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 35,
                          width: 35,
                          child: Image.asset("assets/images/service.png"),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 28.0),
                          child: Text("Maize"),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3.0, right: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("land Size: "),
                        Container(
                          height: 40,
                          width: 100,
                          color: Colors.green[900],
                          child: const Center(
                            child: Text("2 acres"),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3.0, right: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Production\n(Plan): ",
                          style: TextStyle(fontSize: 12),
                        ),
                        Container(
                          height: 40,
                          width: 100,
                          color: Colors.green[900],
                          child: const Center(
                            child: Text("3 tons"),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3.0, right: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Production\n(Actual): ",
                          style: TextStyle(fontSize: 12),
                        ),
                        Container(
                          height: 40,
                          width: 100,
                          color: Colors.green[900],
                          child: const Center(
                            child: Text("3 tons"),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3.0, right: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Cost per\n Unit: ",
                          style: TextStyle(fontSize: 12),
                        ),
                        Container(
                          height: 40,
                          width: 100,
                          color: Colors.green[900],
                          child: const Center(
                            child: Text("1570"),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3.0, right: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Price/Unit\n Farm Gate: ",
                          style: TextStyle(fontSize: 11),
                        ),
                        Container(
                          height: 40,
                          width: 100,
                          color: Colors.green[900],
                          child: const Center(
                            child: Text("3500"),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 3,
            ),
            SizedBox(
              width: 170,
              child: Column(
                children: [
                  Container(
                    height: 40,
                    width: 165,
                    color: Colors.green[900],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 35,
                          width: 35,
                          child: Image.asset("assets/images/service.png"),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 28.0),
                          child: Text("Maize"),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3.0, right: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("land Size: "),
                        Container(
                          height: 40,
                          width: 100,
                          color: Colors.green[900],
                          child: const Center(
                            child: Text("2 acres"),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3.0, right: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Production\n(Plan): ",
                          style: TextStyle(fontSize: 12),
                        ),
                        Container(
                          height: 40,
                          width: 100,
                          color: Colors.green[900],
                          child: const Center(
                            child: Text("3 tons"),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3.0, right: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Production\n(Actual): ",
                          style: TextStyle(fontSize: 12),
                        ),
                        Container(
                          height: 40,
                          width: 100,
                          color: Colors.green[900],
                          child: const Center(
                            child: Text("3 tons"),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3.0, right: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Cost per\n Unit: ",
                          style: TextStyle(fontSize: 12),
                        ),
                        Container(
                          height: 40,
                          width: 100,
                          color: Colors.green[900],
                          child: const Center(
                            child: Text("1570"),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3.0, right: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Price/Unit\n Farm Gate: ",
                          style: TextStyle(fontSize: 11),
                        ),
                        Container(
                          height: 40,
                          width: 100,
                          color: Colors.green[900],
                          child: const Center(
                            child: Text("3500"),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 3,
            ),
            SizedBox(
              width: 170,
              child: Column(
                children: [
                  Container(
                    height: 40,
                    width: 165,
                    color: Colors.green[900],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 35,
                          width: 35,
                          child: Image.asset("assets/images/service.png"),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 28.0),
                          child: Text("Maize"),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3.0, right: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("land Size: "),
                        Container(
                          height: 40,
                          width: 100,
                          color: Colors.green[900],
                          child: const Center(
                            child: Text("2 acres"),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3.0, right: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Production\n(Plan): ",
                          style: TextStyle(fontSize: 12),
                        ),
                        Container(
                          height: 40,
                          width: 100,
                          color: Colors.green[900],
                          child: const Center(
                            child: Text("3 tons"),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3.0, right: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Production\n(Actual): ",
                          style: TextStyle(fontSize: 12),
                        ),
                        Container(
                          height: 40,
                          width: 100,
                          color: Colors.green[900],
                          child: const Center(
                            child: Text("3 tons"),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3.0, right: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Cost per\n Unit: ",
                          style: TextStyle(fontSize: 12),
                        ),
                        Container(
                          height: 40,
                          width: 100,
                          color: Colors.green[900],
                          child: const Center(
                            child: Text("1570"),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3.0, right: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Price/Unit\n Farm Gate: ",
                          style: TextStyle(fontSize: 11),
                        ),
                        Container(
                          height: 40,
                          width: 100,
                          color: Colors.green[900],
                          child: const Center(
                            child: Text("3500"),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
