// import 'package:farmers_network_screens/Garbage/Events.dart';
// import 'package:farmers_network_screens/Garbage/myWidget.dart';
import 'package:farmers_network_screens/Garbage/Comment_section.dart';
import 'package:farmers_network_screens/NavigationSet/NavigatorPageClass.dart';
import 'package:farmers_network_screens/helpers/CartHelper.dart';
import 'package:farmers_network_screens/helpers/CommunityHelper.dart';
import 'package:farmers_network_screens/helpers/InvestmentHelper.dart';
// import 'package:farmers_network_screens/helpers/PricePoint.dart';
import 'package:farmers_network_screens/helpers/ProductHelper.dart';
import 'package:farmers_network_screens/helpers/marketHelper.dart';
import 'package:farmers_network_screens/pages/Community_Comment.dart';
// import 'package:farmers_network_screens/pages/Community.dart';
// import 'package:farmers_network_screens/pages/Investment.dart';
import 'package:farmers_network_screens/pages/NavBody.dart';
// import 'package:farmers_network_screens/pages/Profile.dart';
// import 'package:farmers_network_screens/pages/Resource.dart';
// import 'package:farmers_network_screens/pages/NavBody.dart';
// import 'package:farmers_network_screens/pages/TrackMoney.dart';
// import 'package:farmers_network_screens/widgets/CustomDropdown.dart';
// import 'package:farmers_network_screens/widgets/countryPicker.dart';
// import 'package:farmers_network_screens/widgets/customApp.dart';
// import 'package:farmers_network_screens/widgets/lineChart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// import 'Garbage/Home.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (BuildContext context) => ProductHelper()),
        ChangeNotifierProvider(
            create: (BuildContext context) => CartHelperClass()),
        ChangeNotifierProvider(
            create: (BuildContext context) => InvestHelper()),
        ChangeNotifierProvider(
            create: (BuildContext context) => BottomNavigationController()),
        ChangeNotifierProvider(
            create: (BuildContext context) => MarketProdHelper()),
        ChangeNotifierProvider(
            create: (BuildContext context) => StockProdHelper()),
        ChangeNotifierProvider(
            create: (BuildContext context) => CommunityHelper()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          // const MoneyTracking(),
          // const Forum(),
          // SideDrawerWidget(),
          // ProfilePage(),
          // const CommentSection(),
          const CustumHomePage(),
          // MyBarCart(),
    );
  }
}
