import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/utils/app_layout.dart';
import 'package:tickets/widgets/column_layout.dart';
import 'package:tickets/widgets/layout_builder_widget.dart';

import '../utils/app_styles.dart';

class  ProfileScreen extends StatelessWidget {
  const  ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getWidth(20)),
          children:[
            Gap(AppLayout.getHeight(40)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center ,
              children: [
                Container (
                  width: AppLayout.getWidth(86),
                  height: AppLayout.getHeight(86),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                    image: const DecorationImage(
                      image: AssetImage(
                        "assets/images/img_1.png"
                      )
                    )
                  ),
                ),
                Gap(AppLayout.getHeight(10)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Book Tickets', style: Styles.headLineStyle1,),
                    Text('New-York', style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500
                    ),
                    ),
                    Gap(AppLayout.getHeight(8)),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(100)),
                        color: const Color(0xFFFEF4F3),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(3), vertical: AppLayout.getHeight(3)),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(AppLayout.getHeight(3)),
                            decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                            child: const Icon(FluentSystemIcons.ic_fluent_shield_filled, color: Colors.white, size: 15,),
                          ),
                          Gap(AppLayout.getHeight(5)),
                          const Text('Premium status', style: TextStyle(
                            color: Color(0xFF526799),
                            fontWeight: FontWeight.w600
                          ),)
                        ]
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    InkWell(
                        onTap: ()=> {
                          print('You are tapped')
                        },
                        child: Text('Edit', style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w300),))
                  ],
                )
              ],
            ),
            Gap(AppLayout.getHeight(8)),
            Divider(color: Colors.grey.shade300,),
            Gap(AppLayout.getHeight(8)),
            Stack(
              children: [
                Container(
                  height: AppLayout.getHeight(90),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                  ),
                ),
                Positioned (
                  top: -40,
                  right: -45,
                  child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(width: 18, color: Color(0xFF264CD2))
                  ),
                ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(25), vertical: AppLayout.getHeight(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled, color: Styles.primaryColor, size: 27,),
                        maxRadius: 25,
                        backgroundColor: Colors.white,
                      ),
                      Gap(AppLayout.getHeight(12)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'You\'ve got a new Award',
                            style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                          Text(
                          'You have 95 flights this year',
                          style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.9)
                              ),
                          )
                        ],
                      )
                    ],

                  ),
                )
              ],
            ),
            Gap(AppLayout.getHeight(25)),
            Text("Accumulated miles", style: Styles.headLineStyle2),
            Gap(AppLayout.getHeight(25)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getWidth(18)),
                color: Styles.bgColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    spreadRadius: 1
                  )
                ]
              ),
              child: Column(
                children: [
                  Gap(AppLayout.getHeight(15)),
                  Text(
                    "192802",
                    style: TextStyle(
                      fontSize: 45, color: Styles.textColor, fontWeight: FontWeight.w600
                    ),
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                    children: [
                       Text('Miles accrued', style: Styles.headLineStyle4.copyWith(fontSize: 16) ),
                       Text('11 June 2023', style: Styles.headLineStyle4.copyWith(fontSize: 16) ),
                    ],
                  ), 
                  Gap(AppLayout.getHeight(4)),
                  Divider(color: Colors.grey.shade300,),
                  Gap(AppLayout.getHeight(4)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppColumnLayout(firstText: '23 067', secondText: "Miles", alignment: CrossAxisAlignment.start, isColor: false),
                      AppColumnLayout(firstText: 'Airline CO', secondText: "Received from", alignment: CrossAxisAlignment.end, isColor: false)
                    ],
                  ),
                  Gap(AppLayout.getHeight(12)),
                  const AppLayoutBuilderWidget(sections: 12, isColor: false),
                  Gap(AppLayout.getHeight(12)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppColumnLayout(firstText: '86', secondText: "Miles", alignment: CrossAxisAlignment.start, isColor: false),
                      AppColumnLayout(firstText: 'McDonal\'s', secondText: "Received from", alignment: CrossAxisAlignment.end, isColor: false)
                    ],
                  ),
                  const AppLayoutBuilderWidget(sections: 12, isColor: false),
                  Gap(AppLayout.getHeight(12)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppColumnLayout(firstText: '78 534', secondText: "Miles", alignment: CrossAxisAlignment.start, isColor: false),
                      AppColumnLayout(firstText: 'Deonorla', secondText: "Received from", alignment: CrossAxisAlignment.end, isColor: false)
                    ],
                  )
                ],
              ),
            ),
            Gap(AppLayout.getHeight(25)),
            InkWell(
              onTap: ()=> print("tapped on"),
              child: Center(
                child: Text('How to get more miles', style: Styles.textStyle.copyWith(
                  color: Styles.primaryColor,
                  fontWeight: FontWeight.w500
                )),
              ),
            )
          ]
      ),
    );
  }
}
