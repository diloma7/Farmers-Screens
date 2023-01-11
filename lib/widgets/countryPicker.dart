import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Countries extends StatefulWidget {
  const Countries({Key? key}) : super(key: key);

  @override
  State<Countries> createState() => _CountriesState();
}

class _CountriesState extends State<Countries> {
  String countryValue = "Select a country";
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      // color: Colors.lightBlue,
      child: CSCPicker(
        countryDropdownLabel: countryValue,
        selectedItemStyle: const TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),
        flagState: CountryFlag.DISABLE,
        showCities: false,
        showStates: false,
        onCountryChanged: (value) {
          setState(() {
            countryValue = value;
          });
        },
      ),
    );
  }
}
