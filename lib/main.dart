import 'package:flutter/material.dart';
import 'package:ican_app/screens/cantact.dart';
import 'package:ican_app/screens/definition_screen.dart';
import 'package:ican_app/screens/home.dart';
import 'package:ican_app/screens/profile.dart';
import 'package:ican_app/screens/splash_screen.dart';
import 'package:ican_app/screens/bottomNavigationBar_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
       BottomNavigationBarScreen.routeName : (context) => BottomNavigationBarScreen(),
        DefinitionScreen.routeName : (context) => DefinitionScreen(),
        Home.routeName: (context) => Home(),
        Profile.routeName : (context) => Profile(),
        Contact.routeName : (context) => Contact(),
      },
    );
  }
}
