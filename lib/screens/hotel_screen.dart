import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/utils/app_layout.dart';
import 'package:tickets/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width*0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 19),
      margin: const EdgeInsets.only(top: 5, right: 17),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 5,
            blurRadius: 20
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/one.png"
                )
              ),
            ),
          ),
          const Gap(10),
          Text(
              "Open Space",
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
          ),
          const Gap(5),
          Text(
            "London",
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text(
            "\$40/Night",
            style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor)
          ),
        ],
      ),

    );
  }
}
