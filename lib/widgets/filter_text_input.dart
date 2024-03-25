import 'package:flutter/material.dart';

import 'package:divyam_excel_admin/constants/colors.dart';
import 'package:divyam_excel_admin/widgets/body_text.dart';

class FilterTextInput extends StatelessWidget {
  const FilterTextInput({
    super.key,
    required this.hintText,
    this.width = 275,
  });

  const FilterTextInput.small({
    super.key,
    required this.hintText,
  }) : width = 120;

  final String hintText;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 40,
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: kBorderColor,
        ),
      ),
      child: BodyText(
        text: hintText,
        color: kHintTextColor,
      ),
    );
  }
}
