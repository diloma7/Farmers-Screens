// ignore_for_file: non_constant_identifier_names

import 'package:farmers_network_screens/models/MarketProduct.dart';
import 'package:flutter/material.dart';

class MarketProdHelper with ChangeNotifier {
  List<Crops> cropList = [
    Crops(
      id: 1,
      title: "Maize",
      picture: 'assets/images/field-and-tractor.png',
    ),
    Crops(
      id: 2,
      title: "Rice",
      picture: 'assets/images/field-and-tractor.png',
    ),
    Crops(
      id: 3,
      title: "Soya",
      picture: 'assets/images/field-and-tractor.png',
    ),
    Crops(
      id: 4,
      title: "Sorghum",
      picture: 'assets/images/field-and-tractor.png',
    ),
  ];

  List<Crops> get cropProd => cropList;
}

class StockProdHelper with ChangeNotifier {
  List<Stocks> LiveStock = [
    Stocks(
      id: 1,
      title: "Beef",
      image: "assets/images/futures.png",
    ),
    Stocks(
      id: 2,
      title: "Lamb",
      image: "assets/images/futures.png",
    ),
    Stocks(
      id: 3,
      title: "Chicken",
      image: "assets/images/futures.png",
    ),
    Stocks(
      id: 4,
      title: "Boar",
      image: "assets/images/futures.png",
    ),
  ];

  List<Stocks> get stockProd => LiveStock;
}
