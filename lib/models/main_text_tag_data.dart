import 'package:divyam_excel_admin/constants/colors.dart';
import 'package:divyam_excel_admin/models/row_tag_data.dart';
import 'package:flutter/material.dart';

enum Direction {
  horizontal,
  vertical,
}

class MainTextTagData {
  MainTextTagData({
    required this.mainText,
    this.mainTextColor = kBodyTextColor,
    required this.tagColor,
    required this.tagText,
    required this.direction,
  });

  final String mainText;
  final Color mainTextColor;
  final TagColor tagColor;
  final String tagText;
  final Direction direction;
}
