import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/utils/app_layout.dart';

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
                    ),),
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
                )
              ],
            )

          ]
      ),

    );
  }
}
