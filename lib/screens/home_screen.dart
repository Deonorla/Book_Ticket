import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/screens/hotel_screen.dart';
import 'package:tickets/screens/ticket_view.dart';
import 'package:tickets/utils/app_info_list.dart';
import 'package:tickets/utils/app_styles.dart';
import 'package:tickets/widgets/double_text_widget.dart';

import '../utils/app_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding:  EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start ,
                      children: [
                        Text("Good Morning", style: Styles.headLineStyle3),
                        const Gap(5),
                        Text("Book Tickets", style: Styles.headLineStyle1),
                      ],
                    ),
                    Container(
                      width: AppLayout.getWidth(50),
                      height: AppLayout.getHeight(50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/images/img_1.png"
                          )
                        )
                      ),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  padding:  EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10), vertical: AppLayout.getHeight(10)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                    color: const Color(0xFFF4F6FD)
                  ),
                  child: Row(
                    children: [
                    const Icon(FluentSystemIcons.ic_fluent_search_filled, color: Color(0xFFBFC205)),
                      Text(
                          "Search",
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                const Gap(40),
               const AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "View all")
              ],
            ),
          ),
          const Gap(16),
           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: AppLayout.getWidth(20)),
            child: Row(
              children: ticketList.map((ticketInfo) => TicketView(ticket: ticketInfo)).toList()
            ),
          ),
          const Gap(16),
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
              child: const AppDoubleTextWidget(bigText: "Hotels", smallText: "View all",)
            ),
          const Gap(16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: AppLayout.getWidth(20)),
            child: Row(
              children: hotelList.map((singleHotelList) => HotelScreen(hotel: singleHotelList)).toList()
            ),
          )
        ],
      ),
    );
  }
}
