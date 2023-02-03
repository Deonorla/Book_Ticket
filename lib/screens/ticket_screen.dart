import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/screens/ticket_view.dart';
import 'package:tickets/utils/app_info_list.dart';
import 'package:tickets/utils/app_layout.dart';
import 'package:tickets/utils/app_styles.dart';
import 'package:tickets/widgets/column_layout.dart';
import 'package:tickets/widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget{
  const TicketScreen({Key?key}):super(key:key);
  @override
  Widget build(BuildContext context){
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getWidth(20)),
              children: [
                Gap(AppLayout.getHeight(40)),
                Text("Tickets", style: Styles.headLineStyle1,),
                Gap(AppLayout.getHeight(20)),
                const  AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
                Gap(AppLayout.getHeight(20)),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                  child: TicketView(ticket: ticketList[1], isColor: true),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(18)),
                  margin: EdgeInsets.only(right: AppLayout.getWidth(16), left: AppLayout.getWidth(15)),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                        AppColumnLayout(firstText: 'Flutter DB', secondText: 'Passenger', alignment: CrossAxisAlignment.start, isColor: true,),
                        AppColumnLayout(firstText: '77656 4G6H3Q', secondText: 'Passport', alignment: CrossAxisAlignment.end, isColor: true,),
                        ],
                      )

                    ],
                  ),
                )
          ])
        ]),
    );
  }
}