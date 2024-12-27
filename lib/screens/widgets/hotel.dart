import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class Hotel extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const Hotel({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.6,
      height: 310,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppStyles.ticketBlue,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/${hotel['image']}"))),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              hotel["place"],
              style: AppStyles.headLineStyle2.copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  hotel["destination"],
                  style: AppStyles.headLineStyle3
                      .copyWith(color: AppStyles.kakiColor),
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "\$${hotel['price']}/night",
                  style: AppStyles.headLineStyle3
                      .copyWith(color: AppStyles.kakiColor),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              hotel["description"] != null && hotel["description"].isNotEmpty
                  ? "${hotel["description"].substring(0, hotel["description"].length < 72 ? hotel["description"].length : 72)}..."
                  : "",
              style: AppStyles.baseTextStyle.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
