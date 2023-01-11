// ignore_for_file: file_names

import 'package:farmers_network_screens/models/shopProducts.dart';
import 'package:flutter/cupertino.dart';

class ProductHelper with ChangeNotifier {
  List<ShoppProduct> Grid_Content = [
    ShoppProduct(
        id: '1',
        title: "item1",
        price: 99.99,
        image: "assets/newImg/pineApple.png"),
    ShoppProduct(
        id: '2',
        title: "item2",
        price: 199.99,
        image: "assets/newImg/Page-20-Image-69.png"),
    ShoppProduct(
        id: '3',
        title: "item3",
        price: 299.99,
        image: "assets/newImg/orange.png"),
    ShoppProduct(
        id: '4',
        title: "item4",
        price: 399.99,
        image: "assets/newImg/mangoes.png"),
    ShoppProduct(
        id: '5',
        title: "item5",
        price: 499.99,
        image: "assets/newImg/pears.png"),
    ShoppProduct(
        id: '6',
        title: "item6",
        price: 599.99,
        image: "assets/newImg/grappes.png"),
    // ShoppProduct(
    //     id: '7',
    //     title: "item7",
    //     price: 699.99,
    //     image: "assets/images/trade.png"),
    // ShoppProduct(
    //     id: '8',
    //     title: "item8",
    //     price: 799.99,
    //     image: "assets/images/trade.png"),
  ];

  List<ShoppProduct> get shoppedProduct => Grid_Content;

  void addShoppingProduct(value) {
    Grid_Content.add(value);

    notifyListeners();
  }
}
