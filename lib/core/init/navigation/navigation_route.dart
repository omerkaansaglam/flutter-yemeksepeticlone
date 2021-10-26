import 'package:flutter/material.dart';
import 'package:yemeksepeticlone/core/base/views/bottom_navigation_bar/bottom_navigation_bar_view.dart';
import 'package:yemeksepeticlone/core/base/views/home/home_view.dart';
import 'package:yemeksepeticlone/core/base/views/intro/intro_view.dart';
import 'package:yemeksepeticlone/core/init/navigation/navigation_constants.dart';
import 'package:yemeksepeticlone/main.dart';

class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;
  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.DEFAULT:
        return _normalNavigate(IntroView(), args);

      case NavigationConstants.HOME:
        return _normalNavigate(BottomNavigationView(), args);
        case NavigationConstants.HOME:

      default:
        return MaterialPageRoute(
            builder: (context) => const Scaffold(
                  body: Center(
                    child: Text("Sayfa bulunamadı."),
                  ),
                ));
    }
  }

  MaterialPageRoute _normalNavigate(Widget widget, RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => widget, settings: settings);
  }
}
