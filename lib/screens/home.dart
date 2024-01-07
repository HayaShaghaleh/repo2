import 'package:flutter/material.dart';
import 'package:ican_app/core/app_colors.dart';
import 'package:ican_app/core/res/text.dart';
import 'package:ican_app/core/sevices_const.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
class Home extends StatelessWidget {
  static const routeName = 'Home';
  List<String> item = ["Newest","Newest","Newest","Newest","Newest","Newest","Newest","Newest","Newest","Newest",];
  List<String> item2 = ["Your life starts here","Your life starts here","Your life starts here","Your life starts here","Your life starts here","Your life starts here","Your life starts here","Your life starts here","Your life starts here","Your life starts here",];
  List<Color> itemColor = [Colors.blue ,AppColors.yColor,Colors.blueAccent,Colors.cyanAccent,Colors.deepOrangeAccent,Colors.deepPurpleAccent,Colors.purpleAccent,Colors.tealAccent,Colors.teal,Colors.indigoAccent];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: const TextWidget(text: "Our Services", fontSizer: 25, color: AppColors.blackColor),
        centerTitle: true,
      ),
      body: Container(
        color: AppColors.backColor,
        child: SizedBox(
          height: height,
          child:  Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: height/50,),
              SizedBox(
              height: height/4.2,
                child: ListView.builder(itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.all(15),
                    width: width/3,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius:  BorderRadius.only(bottomLeft: Radius.circular(30),topRight:Radius.circular(30), ),
                      color:  itemColor[index] ,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(text: item[index], fontSizer: 20, color: AppColors.whiteColor),
                        SizedBox(height: height/50,),
                        TextWidget(text: item2[index], fontSizer: 15, color: AppColors.whiteColor),
                      ],
                    ),
                  );
                },
                  itemCount: 10,
                  //shrinkWrap: true,
                  scrollDirection: Axis.horizontal,


                ),
              ),
              Flexible(
                child: ScrollSnapList(itemBuilder: _buildListItem, itemCount: 5, itemSize: height/3, onItemFocus:(index){
                },dynamicItemSize: true,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildListItem(BuildContext context , int index )
  {
    String title = ServicesConst.titles[index];
    String img = ServicesConst.images[index];
    return SizedBox(
      width: 150,
      height: 300,
      child: Card(
        elevation: 12,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          child: Column(
            children: [
              Image.asset(img ,fit: BoxFit.cover),
                const  SizedBox(height: 10,),
              TextWidget(text: title, fontSizer: 15, color: AppColors.blackColor)
            ],
          ),
        ),
      ),
    );
  }
}

