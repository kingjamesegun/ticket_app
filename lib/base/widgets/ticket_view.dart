import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_column_text.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width * 0.85,
        height: 189,
        child: Container(
          margin: const EdgeInsets.only(right: 16),
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: AppStyles.ticketBlue,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(21),
                          topRight: Radius.circular(21))),
                  child: Column(
                    children: [
                      // departure and arrival with icons
                      Row(children: [
                        const TextStyleThird(text: "NYC"),
                        Expanded(child: Container()),
                        const BigDot(),
                        Expanded(
                            child: Stack(
                          children: [
                            const SizedBox(
                              height: 24,
                              child: AppLayoutbuilder(
                                randomDivider: 6,
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.57,
                                child: const Icon(Icons.local_airport_rounded,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        )),
                        const BigDot(),
                        Expanded(child: Container()),
                        const TextStyleThird(text: "LDC")
                      ]),

                      const SizedBox(
                        height: 3,
                      ),
                      // departure names with time
                      const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                                width: 100,
                                child: TextStyleFourth(text: "New-York")),
                            TextStyleFourth(text: "8:00 AM"),
                            SizedBox(
                                width: 100,
                                child: TextStyleFourth(
                                  text: "London",
                                  align: TextAlign.end,
                                )),
                          ])
                    ],
                  )),
              Container(
                height: 20,
                color: AppStyles.ticketOrange,
                child: const Row(
                  children: [
                    BigCircle(
                      isRight: false,
                    ),
                    Expanded(
                        child: AppLayoutbuilder(
                      randomDivider: 16,
                      width: 6,
                    )),
                    BigCircle(isRight: true),
                  ],
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: AppStyles.ticketOrange,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(21),
                          bottomRight: Radius.circular(21))),
                  child: const Column(
                    children: [
                      // departure and arrival with icons
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppColumnText(
                              topText: "1 May",
                              bottomText: "Date",
                              alignment: CrossAxisAlignment.start,
                            ),
                            AppColumnText(
                              topText: "8:00 AM",
                              bottomText: "Departure time",
                              alignment: CrossAxisAlignment.center,
                            ),
                            AppColumnText(
                              topText: "23",
                              bottomText: "Number",
                              alignment: CrossAxisAlignment.end,
                            )
                          ]),

                      const SizedBox(
                        height: 3,
                      ),
                    ],
                  )),
            ],
          ),
        ));
  }
}
