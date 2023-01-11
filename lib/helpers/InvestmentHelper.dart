// ignore_for_file: non_constant_identifier_names, file_names

import 'package:farmers_network_screens/models/InvestmentDetails.dart';
import 'package:flutter/material.dart';

class InvestHelper with ChangeNotifier {
  List<InvestmentProducts> List_content = [
    InvestmentProducts(
      id: "1",
      description: "HIGH VALUE CROP FARMING",
      description_1: "High-Value farm ",
      description_2: "Annual crop. Eg Strawberry",
      description_3: "Production: Average yield per acre",
      description_4: "Market: Organized retail ",
      description_5: "Return on Investment: 30% per year",
      image: "assets/newImg/Page-10-Image-26.png",
    ),
    InvestmentProducts(
      id: "2",
      description: "VALUE ADDITION",
      description_1: "Value addition",
      description_2: "Go To Market: Process package & Sell ",
      description_3: " ",
      description_4: "Market: Organized retail & Institutions ",
      description_5: "Return on Investment: 35% per year",
      image: "assets/newImg/Page-10-Image-27.png",
    ),
    InvestmentProducts(
      id: "3",
      description: "COMMUNITY FINANCING",
      description_1: "Stockvel / Chama ",
      description_2: " ",
      description_3: "Production: Average yield per acre",
      description_4: "Market: Organized retail ",
      description_5: "Return on Investment: 25% per year",
      image: "assets/newImg/Page-10-Image-22.png",
    ),
    InvestmentProducts(
      id: "4",
      description: "DIGITAL FARMING",
      description_1: "Revenue share model with a farmer ",
      description_2: " ",
      description_3: "Production: Average yield per acre",
      description_4: "Market: Organized retail ",
      description_5: "Return on Investment: 20% per year",
      image: "assets/newImg/Page-10-Image-24.png",
    ),
  ];

  List<InvestmentProducts> get shoppedProduct => List_content;
}
