import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_column_text.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({super.key, required this.ticket});

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
                        TextStyleThird(
                          text: ticket["from"]["code"],
                        ),
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
                        TextStyleThird(text: ticket["to"]["code"])
                      ]),

                      const SizedBox(
                        height: 3,
                      ),
                      // departure names with time
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                width: 100,
                                child: TextStyleFourth(
                                    text: ticket["from"]["name"])),
                            TextStyleFourth(text: ticket['flying_time']),
                            SizedBox(
                                width: 100,
                                child: TextStyleFourth(
                                  text: ticket["to"]["name"],
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
