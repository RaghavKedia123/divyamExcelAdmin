import 'package:flutter/material.dart';

import 'package:divyam_excel_admin/constants/colors.dart';

class BodyText extends StatelessWidget {
  const BodyText({
    super.key,
    required this.text,
    this.fontSize = 15,
    this.fontWeight = FontWeight.w400,
    this.color = kBodyTextColor,
    this.textAlign = TextAlign.left,
    this.textOverflow,
  });

  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign textAlign;
  final TextOverflow? textOverflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      softWrap: false,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        letterSpacing: 0.65,
        overflow: textOverflow,
      ),
    );
  }
}
