import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/screens/ticket_view.dart';
import 'package:tickets/utils/app_info_list.dart';
import 'package:tickets/utils/app_layout.dart';
import 'package:tickets/utils/app_styles.dart';
import 'package:tickets/widgets/column_layout.dart';
import 'package:tickets/widgets/ticket_tabs.dart';
import '../widgets/layout_builder_widget.dart';
import 'package:barcode_widget/barcode_widget.dart';

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
                const SizedBox(height: .5),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
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
                      ),
                      Gap(AppLayout.getHeight(20)),
                      const AppLayoutBuilderWidget(sections: 15, isColor: true, width: 5,),
                      Gap(AppLayout.getHeight(20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          AppColumnLayout(firstText: '5643 450 98787', secondText: 'Number of E-ticket', alignment: CrossAxisAlignment.start, isColor: true,),
                          AppColumnLayout(firstText: 'B2SG28', secondText: 'Booking Code', alignment: CrossAxisAlignment.end, isColor: true,),
                        ],
                      ),
                      Gap(AppLayout.getHeight(20)),
                      const AppLayoutBuilderWidget(sections: 15, isColor: true, width: 5,),
                      Gap(AppLayout.getHeight(20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/images/visa.png', scale: 11,),
                                  Text('*** 6539', style: Styles.headLineStyle3,)
                                ],
                              ),
                              Gap(AppLayout.getHeight(5)),
                              Text('Payment Method', style: Styles.headLineStyle4,)
                            ],
                          ),
                          const AppColumnLayout(
                            firstText: '\$499.97',
                            secondText: 'Price',
                            alignment: CrossAxisAlignment.end,
                            isColor: true,
                          )
                        ],
                      ),
                      const SizedBox(height: .5,),
                    ],
                  ),
                ),

                /*
                Bar Code
                  */

                const SizedBox(height: .5),
                Container(
                  margin: EdgeInsets.only(left:AppLayout.getHeight(15), right: AppLayout.getHeight(15)),
                  padding: EdgeInsets.only(top:AppLayout.getHeight(20), bottom: AppLayout.getHeight(20)),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                          bottomRight: Radius.circular(AppLayout.getHeight(21))
                    )
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                      child: BarcodeWidget(
                        barcode: Barcode.code128(),
                        data: 'https://github.com/deonorla',
                        drawText: false,
                        color: Styles.textColor,
                        width: double.infinity,
                        height: 70,

                      ),
                    ),
                  ),
                ),
                Gap(AppLayout.getHeight(20)),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                  child: TicketView(ticket: ticketList[1],),
                ),
          ]),
          Positioned(
            left: AppLayout.getHeight(22),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
          right: AppLayout.getHeight(22),
          top: AppLayout.getHeight(295),
          child: Container(
            padding: EdgeInsets.all(AppLayout.getHeight(3)),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2)
            ),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,
            ),
          ),
        )
        ]),
    );
  }
}