import 'package:flutter/material.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final int sections;
  final bool? isColor;
  final double width;
  const AppLayoutBuilderWidget(
      {super.key, this.isColor, required this.sections, this.width = 3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
              (constraints.constrainWidth() / sections).floor(),
              (index) => SizedBox(
                    width: AppLayout.getHeight(3),
                    height: AppLayout.getWidth(1),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor == null
                            ? Colors.white
                            : Colors.grey.shade300,
                      ),
                    ),
                  )),
        );
      },
    );
  }
}
