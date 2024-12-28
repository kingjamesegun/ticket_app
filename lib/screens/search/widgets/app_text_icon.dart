import 'package:flutter/material.dart';

class AppTextIcon extends StatelessWidget {
  final String inputText;
  final IconData inputIcon;
  const AppTextIcon(
      {super.key, required this.inputText, required this.inputIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            Icon(inputIcon),
            const SizedBox(
              width: 10,
            ),
            Text(inputText)
          ],
        ));
  }
}
