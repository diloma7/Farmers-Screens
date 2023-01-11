import 'dart:convert';
// import 'package:farmers_network/apis/weatherApi.dart';
// import 'package:farmers_network/pages/widgets/AdWidget.dart';
import 'package:farmers_network_screens/Apis/WeatherAPI.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

class Weather extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WeatherState();
  }
}

class _WeatherState extends State<Weather> {
  var loc;
  var today = {};
  late String _currentLat;
  late String _currentlong;

  //_getAddressFromLatLng();

  void initState() {
    // _loadSharedData();
    _getCurrentLocation().whenComplete(() {
      setState(() {});
    });
    // _getCurrentLocation();
    super.initState();
  }

  var timezone = '';
  var humidity;
  var temp;
  var dayofWeek;
  var dateinfo;
  var datax;
  var zone;
  String weather_description = " ";

  List weather = [];

  _getCurrentLocation() async {
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

        // _getAddressFromLatLng();
      });
    } else {}
  }

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
    DateTime date = new DateTime.fromMillisecondsSinceEpoch(d * 1000);
    dayofWeek = DateFormat('EEEE').format(date);
    dateinfo = DateFormat('d MMM y').format(date);
  }

  getDay(d) {
    DateTime date = new DateTime.fromMillisecondsSinceEpoch(d * 1000);
    return DateFormat('EEEE').format(date);
  }

  double _drawerFontSize = 17;
  var icons;
  double currentTemp = 0.0;
  @override
  Widget build(BuildContext context) {
    // _getCurrentLocation();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/weatherbackground.jpg"),
                  fit: BoxFit.cover)),
          child: CustomScrollView(slivers: <Widget>[
            SliverList(
                delegate: SliverChildListDelegate([
              const SizedBox(
                height: 20,
              ),
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child: Column(
                    children: [
                      Text(
                        zone.toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: _drawerFontSize, color: Colors.white),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        today['feels_like'].toString() + " \u00B0",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w900),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        weather_description,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: _drawerFontSize, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              "Wind:" +
                                  "  " +
                                  today['wind_speed'].toString() +
                                  "km/h",
                              style: const TextStyle(
                                  fontSize: 12, color: Colors.white)),
                          Text(
                              "Humidity :" +
                                  "  " +
                                  today['humidity'].toString() +
                                  "%",
                              style: const TextStyle(
                                  fontSize: 12, color: Colors.white)),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              "Visibility :" +
                                  "  " +
                                  today['visibility'].toString() +
                                  "M",
                              style: const TextStyle(
                                  fontSize: 12, color: Colors.white)),
                          Text("UVI :" + "  " + today['uvi'].toString(),
                              style: const TextStyle(
                                  fontSize: 12, color: Colors.white)),
                        ],
                      ),
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
            ])),
            SliverList(
                delegate: SliverChildListDelegate([
              Container(
                  color: const Color(0xFFFFFFFF),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
                  child: const Text(
                    'Next 7 Days',
                    style: TextStyle(fontSize: 12, color: Colors.green),
                  )),
            ])),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int i) {
                  return Container(
                    height: 70,
                    color: const Color(0xFFFFFFFF),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: Text(
                          getDay(weather[i]['dt']).toString(),
                          style:
                              const TextStyle(fontSize: 12, color: Colors.grey),
                        )),
                        // FaIcon(
                        //   weather[i]['weather'][0]['main'] =='Clouds' ? FontAwesomeIcons.cloudRain:FontAwesomeIcons.cloudShowersHeavy,
                        //   color: Colors.grey,
                        //   size: 24,
                        // ),
                        Image.network(
                          "https://openweathermap.org/img/wn/" +
                              weather[i]['weather'][0]['icon'] +
                              '@2x.png',
                          width: 35,
                          height: 35,
                        ),
                        const SizedBox(width: 15),
                        Text(
                          weather[i]['temp']['max'].toString() + " \u00B0",
                          style:
                              const TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          weather[i]['temp']['min'].toString() + " \u00B0",
                          style:
                              const TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        const SizedBox(
                          width: 30,
                        )
                      ],
                    ),
                  );
                },
                childCount: weather.length, // 1000 list items
              ),
            ),
            // SliverList(delegate: SliverChildListDelegate([AdWidget()])),
          ])),
    );
  }
}
