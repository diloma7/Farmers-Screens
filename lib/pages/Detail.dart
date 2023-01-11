// ignore_for_file: avoid_unnecessary_containers

import 'package:farmers_network_screens/helpers/PricePoint.dart';
import 'package:farmers_network_screens/widgets/CustomAppBar_details.dart';
import 'package:farmers_network_screens/widgets/lineChart.dart';
// import 'package:farmers_network_screens/widgets/customApp.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String title;
  final String id;
  final double price;
  final String image;
  const DetailPage(
      {Key? key,
      required this.title,
      required this.id,
      required this.price,
      required this.image})
      : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      appBar: CustomAppbar_Details(
        title: 'Product Details',
        backgroundColor: const Color.fromARGB(183, 26, 93, 27),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(15.0),
            height: 150,
            width: 400,
            color: Colors.blue,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  height: 70,
                  width: 250,
                  child: Image.asset(
                    widget.image,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.title),
              ),
            ]),
          ),
         
        ],
      ),
    );
  }
}

class $ {}
