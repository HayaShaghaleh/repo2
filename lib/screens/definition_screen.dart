import 'package:flutter/material.dart';
import 'package:ican_app/core/res/text.dart';
import 'package:ican_app/screens/bottomNavigationBar_screen.dart';
import '../core/app_colors.dart';
import '../core/res/button.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
class DefinitionScreen extends StatefulWidget {
  static const routeName = 'definitionScreen';

  @override
  State<DefinitionScreen> createState() => _DefinitionScreenState();
}

class _DefinitionScreenState extends State<DefinitionScreen> with SingleTickerProviderStateMixin{
  AnimationController? _animationController;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this,duration: Duration(milliseconds: 50),lowerBound: 0.0,upperBound: 0.2)..addListener(() { setState(() {

    });});
  }
  @override
  Widget build(BuildContext context) {
    var scale = 1+_animationController!.value;
    Color shadowColor = AppColors.yColor;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    bool isPressed = false;
    return SafeArea(
      child: Container(
        color: AppColors.whiteColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height / 10,
              ),
               colorize(),
              Padding(
           padding:EdgeInsets.only(left: width/20,right: width/20,top: height/50) ,
                child:
                colorize2()
                // TextWidget(
                //     text:
                //         "شركة هندسية للاستشارات والحلول البرمجية والتقنية وكل ما يتعلق بتكنولوجيا المعلومات والاتصالات",
                //     fontSizer: 15,
                //     color: AppColors.blackColor),
              ),
              SizedBox(
                height: height / 8,
              ),
             const CircleAvatar(
                backgroundColor: AppColors.whiteColor,
                backgroundImage: const AssetImage('assets/images/200w.gif'),
                radius: 130,
              ),
              SizedBox(
                height: height /150,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: GestureDetector(
                  onTap: ()async {

                  },
                  onTapDown:OnTapDown ,
                  onTapUp: OnTapUp,
                  onTapCancel: OnTapCancel ,
                  child: Transform.scale(
                    scale: scale,
                    child: Container(
                      alignment: Alignment.center,
                      width :width / 3,
                      height :height / 18,
                      decoration: BoxDecoration(
                          borderRadius:  BorderRadius.circular(100),
                          color:  AppColors.yColor ,
                      ),
                      child: Text("Next",style: TextStyle(
                          color: AppColors.blackColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                          decorationThickness: 0
                      ),)
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  OnTapDown(TapDownDetails details)
  {
    _animationController!.forward();

  }
  OnTapUp(TapUpDetails details)
  {
    Future.delayed(Duration(milliseconds: 25), () async {
      _animationController!.reverse();
      Navigator.of(context).pushNamed(BottomNavigationBarScreen.routeName);

    });


  }
  OnTapCancel( )
  {
    _animationController!.reverse();
  }
  Widget colorize()
  {
  const  colorizeColor = [

      AppColors.yColor,
    AppColors.blackColor
    ];
    return AnimatedTextKit(animatedTexts: [
      ColorizeAnimatedText("Who ICAN?", textStyle: TextStyle(
          fontFamily: "Trajan",
          fontSize: 30,
          fontWeight: FontWeight.w700,
          decorationThickness: 0), colors: colorizeColor),

    ],  repeatForever: true,);

  }
  Widget colorize2()
  {
    return AnimatedTextKit(animatedTexts: [
    TyperAnimatedText("An engineering company for consulting, software and technical solutions, and everything related to information and communications technology." , textStyle: TextStyle(fontSize: 15,color: AppColors.blackColor, decorationThickness: 0)),
    ],
isRepeatingAnimation: false,
    repeatForever: false,);
  }
}

// Button(
// width / 3,
// height / 18,
// "التالي",
// AppColors.whiteColor,
// 20,
// AppColors.yColor,
// BottomNavigationBarScreen.routeName),



// AnimatedContainer(
//
// decoration: BoxDecoration(
// borderRadius:  BorderRadius.circular(10),
// //////
// color: isPressed? AppColors.whiteColor : null,
// boxShadow: [
// for(double i =1;i<5;i++)
// BoxShadow(
// color: shadowColor,
// blurRadius: (isPressed?5:3)*i,
// ),
// for(double i =1;i<5;i++)
// BoxShadow(
// spreadRadius: -1,
// blurStyle: BlurStyle.outer,
// color: shadowColor,
// blurRadius: (isPressed?5:3)*i,
// ),
// ]
// ),
// duration: const Duration(milliseconds: 100),
//
// child: TextButton(
// onHover: (h)=> setState(() {
// isPressed=h;
// }),
// style: TextButton.styleFrom(
// side:  BorderSide(color: AppColors.blackColor ,width: 4),
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(10)
// )
// ),
// onPressed: () {
//
// },
// child: Text("التالي",style: TextStyle(
// color: AppColors.blackColor,
// shadows: [
// for(double i = 1;i<(isPressed ?8:4);i++)
// Shadow(
// color: shadowColor,
// blurRadius: 3*i,
// )
// ]
// ),),
// ),
// ),