import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class SectionTexts extends StatelessWidget {
  const SectionTexts(
      {super.key,
      required this.bigText,
      required this.smallText,
      required this.onTap});
  final String bigText;
  final String smallText;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            bigText,
            style: AppStyles.headLineStyle2,
          ),
          InkWell(
            onTap: onTap,
            child: Text("View all",
                style: AppStyles.baseTextStyle
                    .copyWith(color: AppStyles.textColor)),
          ),
        ],
      ),
    );
  }
}
