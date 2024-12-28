import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class FindTicket extends StatelessWidget {
  const FindTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: AppStyles.ticketBlue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
          child: Text("Find Tickets",
              style: AppStyles.baseTextStyle
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold))),
    );
  }
}
