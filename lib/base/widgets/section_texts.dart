import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class SectionTexts extends StatelessWidget {
  const SectionTexts(
      {super.key, required this.bigText, required this.smallText});
  final String bigText;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            bigText,
            style: AppStyles.headLineStyle2,
          ),
          InkWell(
            onTap: () {},
            child: Text("View all",
                style: AppStyles.baseTextStyle
                    .copyWith(color: AppStyles.textColor)),
          ),
        ],
      ),
    );
  }
}
