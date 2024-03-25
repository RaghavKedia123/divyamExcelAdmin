import 'package:flutter/material.dart';

import 'package:divyam_excel_admin/constants/colors.dart';

class ColumnNameIconData {
  ColumnNameIconData({
    required this.label,
    required this.iconData,
    this.labelColor = kBodyTextColor,
    this.iconColor = kBodyTextColor,
  });

  final String label;
  final IconData iconData;
  final Color labelColor;
  final Color iconColor;
}
