import 'package:flutter/material.dart';
import 'package:lab_8/pages/home_page.dart';
import 'package:lab_8/pages/register_page.dart';
import '../pages/login_page.dart';

class NavigationService {
  late GlobalKey<NavigatorState> _navigatorKey;

  final Map<String, Widget Function(BuildContext)> _routes = {
    "/login": (context) => LoginPage(),
    "/register": (context) => RegisterPage(),
    "/home": (context) => Homepage(),
  };

  GlobalKey<NavigatorState>? get navigatorKey {
    return _navigatorKey;
  }

  Map<String, Widget Function(BuildContext)> get routes {
    return _routes;
  }

  NavigationService() {
    _navigatorKey = GlobalKey<NavigatorState>();
  }

  void pushNamed (String routeName) {
    _navigatorKey.currentState?.pushNamed(routeName);
  }

  void pushReplacementNamed (String routeName) {
    _navigatorKey.currentState?.pushReplacementNamed(routeName);
  }

  void push(MaterialPageRoute route) {
    _navigatorKey.currentState?.push(route);
  }

  void goBack() {
    _navigatorKey.currentState?.pop();
  }
}