import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/section_texts.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/home/widgets/hotel.dart';
import '../../base/res/media.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyles.bgColor,
        body: ListView(children: [
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good morning,",
                        style: AppStyles.headLineStyle3,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        "Book a flight",
                        style: AppStyles.headLineStyle1,
                      ),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage(AppMedia.logo)),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD)),
                child: const Row(
                  children: [
                    Icon(
                      FluentSystemIcons.ic_fluent_search_regular,
                      color: Color.fromARGB(255, 112, 112, 108),
                    ),
                    Text("Search Icon"),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SectionTexts(
                bigText: "Upcoming Flights",
                smallText: "View all",
                onTap: () {
                  Navigator.pushNamed(context, "all_tickets");
                },
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: AllJson()
                        .ticketList
                        .take(3)
                        .map((singleTicket) => TicketView(ticket: singleTicket))
                        .toList(),
                  )),
              const SizedBox(
                height: 40,
              ),
              SectionTexts(
                bigText: "Hotels",
                smallText: "View all",
                onTap: () {
                  Navigator.pushNamed(context, "all_tickets");
                },
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: AllJson()
                        .hotelList
                        .take(2)
                        .map((singleHotel) => Hotel(hotel: singleHotel))
                        .toList(),
                  ))
            ]),
          ),
        ]));
  }
}
