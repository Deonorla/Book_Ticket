import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:tickets/utils/app_layout.dart';
import 'package:tickets/widgets/column_layout.dart';
import 'package:tickets/widgets/layout_builder_widget.dart';
import 'package:tickets/widgets/thick_container.dart';
import '../utils/app_styles.dart';

class TicketView extends StatelessWidget{
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context){
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid==true ? 167 : 169),
      child: Container(
        margin : EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Container showing the blue part of the card/ticket
            Container(
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              decoration: BoxDecoration(
                color: isColor == null ? const Color(0xFF526799) : Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(AppLayout.getHeight(21)),
                topRight: Radius.circular(AppLayout.getHeight(21)))

              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'], style: isColor == null ? Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3) ,
                      Expanded(child: Container()),
                      const ThickContainer(isColor: true,),

                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                              height: AppLayout.getHeight(24),
                              child: LayoutBuilder(
                                builder: (BuildContext context, BoxConstraints constraints) {
                                  print("The Width is ${constraints.constrainWidth()}");
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate((constraints.constrainWidth()/6).floor(), (index) =>
                                     SizedBox(
                                      width: 3,
                                      height: 1,
                                      child: DecoratedBox(decoration: BoxDecoration(
                                          color: isColor == null ? Colors.white : Colors.grey.shade300
                                      )),
                                    )),
                                  );
                                },
                              )
                          ),
                          Center(child: Transform.rotate(angle: 1.5,
                              child:  Icon(Icons.local_airport_rounded, color: isColor== null ? Colors.white : const Color(0XFF8ACCF7))
                          )
                          )
                        ],
                      )),
                      
                      const ThickContainer(isColor: true,),
                      Expanded(child: Container()),
                      Text(ticket['to']['code'], style: isColor == null ? Styles.headLineStyle3.copyWith(color: Colors.white) : Styles.headLineStyle3),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(ticket['from']['name'], style: isColor == null ? Styles.headLineStyle4.copyWith(color: Colors.white): Styles.headLineStyle4),
                      ),
                      Text(ticket['flying_time'], style:isColor == null ? Styles.headLineStyle4.copyWith(color: Colors.white) : Styles.headLineStyle4),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(ticket['to']['name'], textAlign: TextAlign.end , style: isColor == null ? Styles.headLineStyle4.copyWith(color: Colors.white) : Styles.headLineStyle4),
                      ),

                    ],
                  )
                ],
              ),
            ),
          //  showing the orange part of the card/ticket
            Container(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children:  [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor == null ? const Color(0xFFeeedf2) : Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(AppLayout.getHeight(10)),
                          bottomRight: Radius.circular(AppLayout.getHeight(10))
                        )
                      ),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: EdgeInsets.all(AppLayout.getWidth(12)),
                    child: const AppLayoutBuilderWidget(sections: 6, isColor: true)
                  )),
                   SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor == null ? const Color(0xFFeeedf2) : Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(AppLayout.getHeight(10)),
                          bottomLeft: Radius.circular(AppLayout.getHeight(10))
                        )
                      ),
                    ),
                  )
                ],
              ),
            ),
          //  bottom part of the orange container
            Container(
              padding: const EdgeInsets.only(top: 10, left: 16, bottom: 16, right: 16 ),
             decoration: BoxDecoration(
               color: isColor == null ? Styles.orangeColor : Colors.white,
               borderRadius:  BorderRadius.only(
                 bottomRight: Radius.circular(isColor==null ? AppLayout.getHeight(21) : 0),
                 bottomLeft: Radius.circular(isColor==null ? AppLayout.getHeight(21) : 0)
               )
             ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(firstText: ticket['date'], secondText: "Date", alignment: CrossAxisAlignment.start,isColor: isColor,),
                      AppColumnLayout(firstText: ticket['departure_time'], secondText: "Departure time", alignment: CrossAxisAlignment.center, isColor: isColor,),
                      AppColumnLayout(firstText: ticket['number'].toString(), secondText: "Number", alignment: CrossAxisAlignment.end, isColor: isColor,),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}