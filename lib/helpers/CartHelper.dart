// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/cupertino.dart';

class CartItems {
  final String id;
  final String title;
  final String price;
  final String image;
  final int qtity;

  CartItems({
    required this.id,
    required this.title,
    required this.price,
    required this.image,
    required this.qtity,
  });
}

class CartHelperClass with ChangeNotifier {
  Map<String, CartItems> items = {};

  Map<String, CartItems> get cart_items {
    return {...items};
  }

  void addItems({required String id, price, title, image}) {
    if (items.containsKey(id)) {
      items.update(
        id,
        (value) => CartItems(
            id: value.id,
            title: value.title,
            price: value.price,
            image: value.image,
            qtity: value.qtity + 1),
      );

      notifyListeners();
    } else {
      items.putIfAbsent(
          id,
          () => CartItems(
                id: DateTime.now().toString(),
                title: title.toString(),
                price: price.toString(),
                image: image.toString(),
                qtity: 1,
              ));
      notifyListeners();
    }
  }

//To delete existing items
  // void removeItems({required String id, price, title, image, qtity}) {
  //   cart_items.removeWhere((key, value) => value.id == id);

  //   notifyListeners();
  // }

  double get totalDue {
    double total = 0.0;

    items.forEach((key, value) {
      total += double.parse(value.price) * value.qtity;
    });
    return total;
  }

  // double get amountDue {
  //   double amount = 0.0;

  //   items.forEach((key, value) {
  //     amount += double.parse(value.price) * value.qtity;
  //   });
  //   return amount;
  // }
}
