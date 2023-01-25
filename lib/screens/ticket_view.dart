import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/utils/app_layout.dart';
import 'package:tickets/widgets/thick_container.dart';
import '../utils/app_styles.dart';

class TicketView extends StatelessWidget{
  final Map<String, dynamic> ticket;
  const TicketView({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context){
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            // Container showing the blue part of the card/ticket
            Container(
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              decoration: BoxDecoration(
                color: const Color(0xFF526799),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(AppLayout.getHeight(21)),
                topRight: Radius.circular(AppLayout.getHeight(21)))

              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'], style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                      Expanded(child: Container()),
                      const ThickContainer(),

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
                                    const SizedBox(
                                      width: 3,
                                      height: 1,
                                      child: DecoratedBox(decoration: BoxDecoration(
                                          color: Colors.white
                                      )),
                                    )),
                                  );
                                },
                              )
                          ),
                          Center(child: Transform.rotate(angle: 1.5,
                              child: const Icon(Icons.local_airport_rounded, color: Colors.white)
                          )
                          )
                        ],
                      )),
                      
                      const ThickContainer(),
                      Expanded(child: Container()),
                      Text(ticket['to']['code'], style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(ticket['from']['name'], style: Styles.headLineStyle4.copyWith(color: Colors.white)),
                      ),
                      Text(ticket['flying_time'], style: Styles.headLineStyle4.copyWith(color: Colors.white)),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(ticket['to']['name'], textAlign: TextAlign.end , style: Styles.headLineStyle4.copyWith(color: Colors.white)),
                      ),

                    ],
                  )
                ],
              ),
            ),
          //  showing the orange part of the card/ticket
            Container(
              color: Styles.orangeColor,
              child: Row(
                children:  [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: const Color(0xFFeeedf2),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(AppLayout.getHeight(10)),
                          bottomRight: Radius.circular(AppLayout.getHeight(10))
                        )
                      ),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: EdgeInsets.all(AppLayout.getWidth(12)),
                    child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                    return  Flex(
                        direction: Axis.horizontal,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate((constraints.constrainWidth()/15).floor(), (index) =>  SizedBox(
                          width: AppLayout.getWidth(5),
                          height: AppLayout.getHeight(1),
                          child: const DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.white,
                              )
                          ),
                        )),
                      );
                    },

                    ),
                  )),
                   SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: const Color(0xFFeeedf2),
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
               color: Styles.orangeColor,
               borderRadius:  BorderRadius.only(
                 bottomRight: Radius.circular(AppLayout.getHeight(21)),
                 bottomLeft: Radius.circular(AppLayout.getHeight(21))
               )
             ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text(ticket['date'],
                            style: Styles.headLineStyle3.copyWith(color: Colors.white
                            )),
                          const Gap(5),
                          Text("Date",
                          style: Styles.headLineStyle4.copyWith(color: Colors.white
                          ))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(ticket['departure_time'],
                              style: Styles.headLineStyle3.copyWith(color: Colors.white
                              )),
                          const Gap(5),
                          Text("Departure time",
                              style: Styles.headLineStyle4.copyWith(color: Colors.white
                              ))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                           Text(ticket['number'].toString() ,
                            style: Styles.headLineStyle3.copyWith(color: Colors.white
                            )),
                          const Gap(5),
                          Text("Number",
                          style: Styles.headLineStyle4.copyWith(color: Colors.white
                          ))
                        ],
                      )
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