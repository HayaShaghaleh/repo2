import 'package:flutter/material.dart';

import '../core/app_colors.dart';
import '../core/res/text.dart';

class Profile extends StatelessWidget {
  static const routeName = 'Profile';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: const TextWidget(text: "ICAN", fontSizer: 28, color: AppColors.blackColor),
        centerTitle: true,
      ),
      body: Container(
        color: AppColors.backColor,

      ),
    );
  }
}
