import 'package:flutter/material.dart';

import 'package:divyam_excel_admin/constants/colors.dart';

class MainSubColumnNameData {
  MainSubColumnNameData({
    required this.mainText,
    required this.subText,
    this.mainTextColor = kBodyTextColor,
    this.subTextColor = kBodyTextColor,
  });

  final String mainText;
  final String subText;
  final Color mainTextColor;
  final Color subTextColor;
}
