import 'package:divyam_excel_admin/constants/colors.dart';
import 'package:flutter/material.dart';

class ActionIcon extends StatelessWidget {
  const ActionIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Icon(
          Icons.remove_red_eye_outlined,
          color: kBodyTextColor,
          size: 20,
        ),
      ],
    );
  }
}
