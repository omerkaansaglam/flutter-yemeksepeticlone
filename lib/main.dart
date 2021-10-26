import 'package:flutter/material.dart';
import 'package:yemeksepeticlone/core/init/navigation/navigation_route.dart';
import 'package:yemeksepeticlone/core/init/navigation/navigation_service.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yemek Sepeti Clone',
      initialRoute: '/',
      onGenerateRoute: NavigationRoute.instance.generateRoute,
      navigatorKey: NavigationService.instance.navigatorKey,
      theme:  ThemeData(
        primaryColor: const Color(0xFFE53154),
        textTheme: const TextTheme(
          subtitle1: TextStyle(color: Colors.white,fontSize: 14),
          headline2: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold)
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFE53154),
          centerTitle: true,
          elevation: 0
        ),
      ),
    );
  }
}
