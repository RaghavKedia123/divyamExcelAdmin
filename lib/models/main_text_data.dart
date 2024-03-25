import 'package:flutter/material.dart';

import 'package:divyam_excel_admin/constants/colors.dart';

class MainTextData {
  MainTextData({
    required this.text,
    this.textColor = kBodyTextColor,
    this.textOverflow,
  });

  final String text;
  final Color textColor;
  final TextOverflow? textOverflow;
}
