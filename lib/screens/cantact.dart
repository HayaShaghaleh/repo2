import 'package:flutter/material.dart';
import 'package:ican_app/core/res/text.dart';

import '../core/app_colors.dart';

class Contact extends StatelessWidget {
  static const routeName = 'Contact';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.backColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: const TextWidget(text: "ICAN", fontSizer: 28, color: AppColors.blackColor),
        centerTitle: true,
      ),
      body: SingleChildScrollView(

        child: Container(

          child: Column(
            children: [
              SizedBox(
                height: height / 20,
              ),
              buildExpansionTile("About Us",Icons.people_alt ,[
               const ListTile(title:SelectableText("شركة هندسية للاستشارات والحلول البرمجية والتقنية وكل ما يتعلق بتكنولوجيا المعلومات والاتصالات."
               " بإدارة المهندس باسل تنبكجي والمهندس إياد عرجة."
                    "جاهزون لتصميم وبرمجة برامج الاندرويد وبرامج اجهزة ابل ومواقع الالكترونية لإدارة عملكم بشكل سلس و كامل وبما يغطي كافة تفاصيل العمل وتسهيل التواصل مع العملاء بشكل احترافي وفق تصماميم مميزة وسهلة الاستخدام."
                    "وجاهزون ايضا لكافة تصاميم الغرافيك والمونتاج من تصميم هويات بصرية وتجارية لكم الى تصميم شعارات لوغو وغلاف لشركتكم الى بوسترات وبوستات منصات تواصل اجتماعي واعلانات طرقية  وكروت فيزيت الى تصوير وعمل  فيديو برومو وموشن اعلاني و احترافي لشركتكم ومنتجاتكم والتسويق لها رقميا .",
                style:TextStyle(),textDirection: TextDirection.rtl,),),
              ]),
              buildExpansionTile("Address",Icons.location_on ,[
                buildListTile("Syria/Aleppo/Sheikh Taha, next to Dikran Pharmacy.",""),
              ]),
              buildExpansionTile("Contact Us",Icons.call ,[
                buildListTile("Mobile","+963999136824"),
                buildListTile("Phone","+963214660955"),
              ]),

            ],
          ),
        ),
      ),
    );
  }

  ListTile buildListTile(String title ,String subTitle ) => ListTile(title: TextWidget(text: title,fontSizer: 15, color: AppColors.blackColor),subtitle: SelectableText(subTitle),);

  ExpansionTile buildExpansionTile(String title ,IconData icon, List<Widget> children) {
    return  ExpansionTile(
      iconColor: AppColors.darkGreyColor,
          title: TextWidget(
              text: title, fontSizer: 20, color: AppColors.blackColor),
          leading: Icon(icon ,color: AppColors.darkGreyColor,),
          backgroundColor: AppColors.whiteColor,
          children: children ,
        );
  }
}
