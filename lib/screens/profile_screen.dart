import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/widgets/column_layout.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getHeight(86),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(10)),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/img_1.png'))),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style: Styles.headLineStyle1,
                  ),
                  Gap(AppLayout.getHeight(2)),
                  Text(
                    'New York',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(3),
                        vertical: AppLayout.getHeight(3)),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFEF4F3),
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(100)),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(5)),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(AppLayout.getHeight(6)),
                        const Text(
                          'Premiu status',
                          style: TextStyle(
                            color: Color(0xFF526799),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Gap(AppLayout.getHeight(6)),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Edit',
                      style: Styles.textStyle.copyWith(
                          color: Styles.primarycolor,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(
            color: Colors.grey.shade300,
          ),
          Gap(AppLayout.getHeight(8)),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primarycolor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                ),
              ),
              Positioned(
                top: -40,
                right: -45,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: AppLayout.getHeight(18),
                        color: const Color(0xFF264CD2)),
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(AppLayout.getHeight(20)),
                  CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: Colors.white,
                    child: Icon(
                      FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                      color: Styles.primarycolor,
                      size: 27,
                    ),
                  ),
                  Gap(AppLayout.getHeight(12)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'You\'v got a new award',
                        style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Text(
                        'You have 95 flights in a year',
                        style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text(
            'Accumulated miles',
            style: Styles.headLineStyle2,
          ),
          Gap(AppLayout.getHeight(14)),
          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '192802',
                  style: TextStyle(
                      fontSize: 45,
                      color: Styles.textColor,
                      fontWeight: FontWeight.w600),
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accrued",
                      style: Styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "01 Oct 2022",
                      style: Styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(4)),
                Divider(
                  color: Colors.grey.shade300,
                ),
                Gap(AppLayout.getHeight(4)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                        firstText: '23 042',
                        secondText: 'Miles',
                        alignment: CrossAxisAlignment.start),
                    AppColumnLayout(
                        firstText: 'Airline CO',
                        secondText: 'Received from',
                        alignment: CrossAxisAlignment.end),
                  ],
                ),
                Gap(AppLayout.getHeight(25)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                        firstText: '24',
                        secondText: 'Miles',
                        alignment: CrossAxisAlignment.start),
                    AppColumnLayout(
                        firstText: "McDonald's",
                        secondText: 'Received from',
                        alignment: CrossAxisAlignment.end),
                  ],
                ),
                Gap(AppLayout.getHeight(25)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                        firstText: '52 340',
                        secondText: 'Miles',
                        alignment: CrossAxisAlignment.start),
                    AppColumnLayout(
                        firstText: "Exuma",
                        secondText: 'Received from',
                        alignment: CrossAxisAlignment.end),
                  ],
                ),
                Gap(AppLayout.getHeight(40)),
                InkWell(
                    onTap: () {},
                    child: Text(
                      'How to get more miles',
                      style: Styles.headLineStyle3
                          .copyWith(color: const Color(0xFF526799)),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
