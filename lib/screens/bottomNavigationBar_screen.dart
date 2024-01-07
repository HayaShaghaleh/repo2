import 'package:flutter/material.dart';
import 'package:ican_app/core/app_colors.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ican_app/core/res/text.dart';
import 'package:ican_app/screens/cantact.dart';
import 'package:ican_app/screens/home.dart';
import 'package:ican_app/screens/profile.dart';
class BottomNavigationBarScreen extends StatefulWidget {
  static const routeName = 'bottomNavigationBarScreen';

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
int selectedIndex =1;
final screen =[Profile(),Home(),Contact()];
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        bottomNavigationBar: CurvedNavigationBar(
          index: selectedIndex,
          color: AppColors.yColor,
          backgroundColor: AppColors.backColor,
          items: [
          Icon(Icons.person,size: 30,),
          Icon(Icons.home,size: 30,),
          Icon(Icons.location_on_sharp,size: 30,),
        ],
        onTap: (index){
            setState(() {
              selectedIndex=index;
            });
        },
          animationCurve: Curves.easeInBack,
          animationDuration: const Duration(milliseconds: 400),
        ),
        body: screen[selectedIndex],
      ),
    );
  }
}
