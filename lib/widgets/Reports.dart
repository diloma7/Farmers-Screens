import 'dart:convert';
// import 'package:farmers_network_screens/helpers/PricePoint.dart';
import 'package:farmers_network_screens/pages/Business.dart';
import 'package:farmers_network_screens/pages/FarmersBarChart.dart';
import 'package:farmers_network_screens/pages/Weather.dart';
// import 'package:farmers_network_screens/widgets/lineChart.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart' as http;
import 'package:farmers_network_screens/Apis/WeatherAPI.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyReports extends StatefulWidget {
  const MyReports({
    Key? key,
  }) : super(key: key);

  @override
  State<MyReports> createState() => _MyReportsState();
}

class _MyReportsState extends State<MyReports> {
  var loc;
  // var personalData = ModelViewUser();
  var today = {};
  late String _currentLat;
  late String _currentlong;
  late Future<void> futureController;
  //_getAddressFromLatLng();

  @override
  void initState() {
    _getCurrentLocation().whenComplete(() {
      setState(() {});
    });
    // _getCurrentLocation();
    super.initState();
  }

  // Key _formKey = GlobalKey<FormState>();
  var timezone = '';
  var humidity;
  var temp;
  var dayofWeek;
  var dateinfo;
  var datax;
  var zone;
  String weather_description = " ";

  int _points = 0;
  String _route = '';

  List weather = [];

  _getCurrentLocation() async {
    // _loadSharedData();
    final response =
        await http.get(Uri.parse("https://ipinfo.io/?token=142ece6d9cb1c6"));
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      print(response.body);
      //print(jsonResponse["city"]);
      final splitted = jsonResponse["loc"].split(',');
      final lat = splitted[0];
      final long = splitted[1];
      setState(() {
        _currentLat = lat;
        _currentlong = long;
        zone = jsonResponse["timezone"].split('/');
        zone = zone[1];
        getLocationData();
      });
    } else {}
  }

  // @override
  // void dispose() {
  //   controller.dispose(); // when app is been closed destroyed the controller
  //   super.dispose();
  // }

  getLocationData() async {
    // PermissionStatus permission = await LocationPermissions().requestPermissions();
    var result = await Api().getWeather(_currentLat.toString(),
        _currentlong.toString(), 'hourly,minutely', 'metric');
    var body = json.decode(result.body);
    //print(result);
    //print(body);
    setState(() {
      timezone = body['timezone'];
      today = body['current'];
      weather = body['daily'];
      weather_description = today['weather'][0]['description'].toString();
    });
    var d = today['dt'];
    //print(d);
    DateTime date = DateTime.fromMillisecondsSinceEpoch(d * 1000);
    dayofWeek = DateFormat('EEEE').format(date);
    dateinfo = DateFormat('d MMM y').format(date);
  }

  getDay(d) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(d * 1000);
    return DateFormat('EEEE').format(date);
  }

  var icons;
  double currentTemp = 0.0;

  @override
  Widget build(BuildContext context) {
    var re = MediaQuery.of(context).orientation.toString();
    debugPrint("orientation " + re);

    return Container(
      margin: const EdgeInsets.only(left: 0, top: 5, right: 0),
      height: 220,
      width: MediaQuery.of(context).size.width,
      // color: Colors.blueAccent,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                InkWell(
                  child: Container(
                    height: 200,
                    width: 160,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            opacity: 0.3,
                            image: AssetImage(
                                "assets/newImg/cloud-gff6c8cb92_1280.png"),
                            fit: BoxFit.cover),
                        color: Color.fromARGB(255, 250, 250, 250),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Container(
                            height: 35,
                            width: 140,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: HexColor("#99add6")),
                            child: Center(
                              child: Text(zone.toString(),
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900,
                                      fontFamily: 'Poppins',
                                      color:
                                          Color.fromARGB(255, 255, 255, 255))),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(today['temp'].toString() + "\u00B0C",
                            //,
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                                color: HexColor("#99add6"))),
                        Text(
                          weather_description,
                          style: TextStyle(
                              color: Color.fromARGB(255, 140, 137, 137)),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 35,
                          width: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: HexColor("#da797e")),
                          child: Center(
                            child: Text(today['temp'].toString() + " \u00B0",
                                style: const TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 35,
                          width: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: HexColor("#99add6")),
                          child: Center(
                            child: Text(
                                today['feels_like'].toString() + " \u00B0",
                                //,
                                style: const TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ),
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Weather(),
                      ),
                    );
                  },
                )
              ],
            ),
            Expanded(
              child: Column(children: [
                // const Text(
                //   "Business",
                //   style: TextStyle(
                //       fontSize: 10,
                //       fontFamily: 'Poppins',
                //       color: Color(0xFF4b7344)),
                // ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BusinessPage(),
                      ),
                    );
                  },
                  child: Container(
                      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? 212
                          : MediaQuery.of(context).size.height * 0.38,
                      width: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.width
                          : MediaQuery.of(context).size.width * 0.38,
                      child: const Card(
                        child: FarmBarChart(),
                      )),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
