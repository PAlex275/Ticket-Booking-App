import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/screens/ticket_view.dart';
import 'package:ticket_booking_app/utils/app_info_list.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/widgets/column_layout.dart';
import 'package:ticket_booking_app/widgets/layout_builder_widget.dart';
import 'package:ticket_booking_app/widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text(
              'Tickets',
              style: Styles.headLineStyle1.copyWith(fontSize: 38),
            ),
            Gap(AppLayout.getHeight(20)),
            const AppTicketTabs(firstTab: 'Upcoming', secondTab: 'Previous'),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(
                ticket: ticketList[0],
                isColor: true,
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(15),
                  vertical: AppLayout.getHeight(20)),
              margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppColumnLayout(
                        firstText: 'Flutter DB',
                        secondText: 'Passenger',
                        alignment: CrossAxisAlignment.start,
                      ),
                      AppColumnLayout(
                        firstText: '5221 357689',
                        secondText: 'passport',
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  const AppLayoutBuilderWidget(
                    sections: 15,
                    isColor: true,
                    width: 5,
                  ),
                  Gap(AppLayout.getHeight(20)),
                  const SizedBox(
                    height: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppColumnLayout(
                        firstText: '3723 0045 4932',
                        secondText: 'Number of E-ticket',
                        alignment: CrossAxisAlignment.start,
                      ),
                      AppColumnLayout(
                        firstText: 'b2SG28',
                        secondText: 'Booking Code',
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/visa.png',
                                scale: 11,
                              ),
                              Text(
                                ' *** 2462',
                                style: Styles.headLineStyle3
                                    .copyWith(color: Colors.grey.shade700),
                              ),
                            ],
                          ),
                          Gap(AppLayout.getHeight(5)),
                          Text(
                            'Payment method',
                            style: Styles.headLineStyle4,
                          ),
                        ],
                      ),
                      const AppColumnLayout(
                          firstText: '\$249.99',
                          secondText: 'Price',
                          alignment: CrossAxisAlignment.end)
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15)),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                      bottomRight: Radius.circular(AppLayout.getHeight(21)))),
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(20),
                    vertical: AppLayout.getHeight(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                  child: BarcodeWidget(
                    barcode: Barcode.code128(),
                    data: 'https://alexpetrisor.com/',
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
              child: TicketView(
                ticket: ticketList[0],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
