import 'package:flutter/material.dart';
import 'package:tickets/utils/app_layout.dart';
import 'package:tickets/widgets/thick_container.dart';
import '../utils/app_styles.dart';

class TicketView extends StatelessWidget{
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21),
                topRight: Radius.circular(21))

              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("NYC", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                      Expanded(child: Container()),
                      const ThickContainer(),

                      Expanded(child: SizedBox(
                        height: 24,
                        child: LayoutBuilder(
                          builder: (BuildContext context, BoxConstraints constraints) {
                            print("The Width is ${constraints.constrainWidth()}");
                           return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      )),

                      const ThickContainer(),
                      Expanded(child: Container()),
                      Text("London", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
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