import 'package:flutter/material.dart';

import 'package:divyam_excel_admin/constants/colors.dart';

enum Direction {
  horizontal,
  vertical,
}

class MainSubTextData {
  MainSubTextData({
    required this.mainText,
    this.mainTextOverflow,
    required this.subText,
    this.subTextOverflow,
    required this.direction,
    this.mainTextColor = kBodyTextColor,
    this.subTextColor = kSubTextColor,
  });

  final String mainText;
  final TextOverflow? mainTextOverflow;
  final String subText;
  final TextOverflow? subTextOverflow;
  final Direction direction;
  final Color mainTextColor;
  final Color subTextColor;
}
