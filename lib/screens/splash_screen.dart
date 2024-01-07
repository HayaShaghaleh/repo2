import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:ican_app/core/app_colors.dart';

import 'bottomNavigationBar_screen.dart';
import 'definition_screen.dart';
class SplashScreen extends StatefulWidget {
  static const routeName = 'splashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 1800), () async {
      Navigator.pushReplacementNamed(context, DefinitionScreen.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.whiteColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image:  AssetImage('assets/images/ican.jpg')),
            SpinKitThreeInOut(
              size: 30.0,
              itemBuilder: (_, int index) {
                return DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: index.isEven
                            ? AppColors.yColor
                            : AppColors.blackColor));
              },
            )

          ],
        ),
      ),
    );
  }
}
