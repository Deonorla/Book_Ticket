import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/utils/app_layout.dart';
import 'package:tickets/widgets/icon_text_widget.dart';
import '../utils/app_styles.dart';

class SearchScreen extends StatelessWidget{
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
        children: [
            Gap(AppLayout.getHeight(40)),
            Text("What are\n you looking for?",
             style: Styles.headLineStyle1.copyWith(fontSize: AppLayout.getWidth(35 )),

           ),
            Gap(AppLayout.getHeight(20)), 
            FittedBox(
              child: Container(
                padding: const EdgeInsets.all(3.5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
                  color: const Color(0xFFF4F6FD),
                ),
                child: Row(
                  children: [
                    Container(
                      width: size.width*.44,
                      padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50))),
                        color: Colors.white,
                      ),
                      child: const Center(
                          child: Text("Airline tickets")
                      ),
                    ),
                    Container(
                      width: size.width*.44,
                      padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50))),
                          color: Colors.transparent
                      ),
                      child: const Center(
                          child: Text("Hotels") 
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Gap(AppLayout.getHeight(25)),
            const AppIconText(icon: Icons.flight_takeoff_rounded, text: 'Departure'),
            Gap(AppLayout.getHeight(15)),
            const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival '),
        ],
      ),
    );
}
}