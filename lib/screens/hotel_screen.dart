import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHeight(350),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      decoration: BoxDecoration(
        color: Styles.primarycolor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 2,
            spreadRadius: 1,
          )
        ],
      ),
      margin: const EdgeInsets.only(right: 17, top: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Styles.primarycolor,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/${hotel['image']}"),
                )),
          ),
          const Gap(10),
          Text(
            hotel['place'],
            style: Styles.headLineStyle2
                .copyWith(color: const Color.fromARGB(255, 0, 50, 124)),
          ),
          const Gap(5),
          Text(
            hotel['destination'],
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text(
            '\$${hotel['price']}/night',
            style: Styles.headLineStyle1
                .copyWith(color: const Color.fromARGB(255, 0, 50, 124)),
          ),
        ],
      ),
    );
  }
}
