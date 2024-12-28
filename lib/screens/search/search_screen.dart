import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/section_texts.dart';
import 'package:ticket_app/screens/search/widgets/app_text_icon.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/screens/search/widgets/find_ticket.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppStyles.bgColor,
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            const SizedBox(height: 40),
            Text(
              "What are\nyou looking for?",
              style: AppStyles.headLineStyle1.copyWith(fontSize: 35),
            ),
            const SizedBox(height: 20),
            const AppTicketTabs(),
            const SizedBox(height: 20),
            const AppTextIcon(
              inputIcon: Icons.flight_takeoff_rounded,
              inputText: "Departure",
            ),
            const SizedBox(
              height: 10,
            ),
            const AppTextIcon(
              inputIcon: Icons.flight_land_rounded,
              inputText: "Arrival ",
            ),
            const SizedBox(height: 20),
            const FindTicket(),
            const SizedBox(height: 40),
            SectionTexts(
                bigText: "Upcoming Flights",
                smallText: "View all",
                onTap: () {}),
            const SizedBox(height: 20),
            Row(
              children: [
                Container(
                    width: size.width * 0.42,
                    decoration: BoxDecoration(
                        color: AppStyles.ticketBlue,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Text(
                        "20% discount on the early booking of the flight. Don't miss it."))
              ],
            )
          ],
        ));
  }
}
