// ignore_for_file: prefer_final_fields

// import 'package:farmers_network_screens/models/shopProducts.dart';
import 'package:farmers_network_screens/pages/Chat.dart';
import 'package:farmers_network_screens/pages/Chop.dart';
import 'package:farmers_network_screens/pages/MainHome.dart';
import 'package:farmers_network_screens/pages/Market.dart';
import 'package:farmers_network_screens/pages/Profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';

class NavigatorPage {
  final Routes routes;
  final IconData navIcon;
  final String navLabel;
  final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

  NavigatorPage(this.routes, this.navIcon, this.navLabel);
}

abstract class Routes {
  Route<dynamic> getRoute(RouteSettings settings);
}

class HomeRoute implements Routes {
  @override
  Route getRoute(RouteSettings settings) {
    // throw UnimplementedError();
    // final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return CupertinoPageRoute(builder: (_) => const MainHomePage());
      case 'Market':
        return CupertinoPageRoute(builder: (_) => const MarketPage());
      default:
        return CupertinoPageRoute(
            builder: (_) => Center(
                  child: Text('${settings.name} does not exist'),
                ));
    }
  }
}

class MarketRoute implements Routes {
  @override
  Route getRoute(RouteSettings settings) {
    // throw UnimplementedError();
    // final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return CupertinoPageRoute(builder: (_) => const MarketPage());
      case 'shop':
        return CupertinoPageRoute(builder: (_) => const Shop());
      default:
        return CupertinoPageRoute(
            builder: (_) => Center(
                  child: Text('${settings.name} does not exist'),
                ));
    }
  }
}

class ChatRoute implements Routes {
  @override
  Route getRoute(RouteSettings settings) {
    // throw UnimplementedError();
    // final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return CupertinoPageRoute(builder: (_) => const ChatRoom());
      case 'chat':
        return CupertinoPageRoute(builder: (_) => const ChatRoom());
      default:
        return CupertinoPageRoute(
            builder: (_) => Center(
                  child: Text('${settings.name} does not exist'),
                ));
    }
  }
}

class ProfileRoute implements Routes {
  @override
  Route getRoute(RouteSettings settings) {
    // throw UnimplementedError();
    // final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return CupertinoPageRoute(builder: (_) => const ProfilePage());
      case 'profile':
        return CupertinoPageRoute(builder: (_) => const ProfilePage());
      default:
        return CupertinoPageRoute(
            builder: (_) => Center(
                  child: Text('${settings.name} does not exist'),
                ));
    }
  }
}

class BottomNavigationController extends ChangeNotifier {
  late final List<NavigatorPage> _navPages;

  List<NavigatorPage> get navPages => _navPages;

  int _currentTab = 0;

  int get currentTab => _currentTab;

  NavigatorPage get currentNavigatorPage => navPages[_currentTab];

  void init() {
    _navPages = [
      NavigatorPage(
        HomeRoute(),
        (Icons.home),
        "Home",
      ),
      NavigatorPage(ChatRoute(), (Icons.chat_bubble_outline_outlined), "Chat"),
      NavigatorPage(ChatRoute(), (Icons.add), "Record"),
      NavigatorPage(MarketRoute(), (Icons.shopping_cart_outlined), "Market"),
      NavigatorPage(ProfileRoute(), (Icons.person), "Profile"),
    ];
  }

  void changeTabIndex(int index) {
    _currentTab = index;
    notifyListeners();
  }
}
