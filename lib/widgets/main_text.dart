import 'package:divyam_excel_admin/widgets/body_text.dart';
import 'package:flutter/material.dart';

import 'package:divyam_excel_admin/models/data_alignment.dart';
import 'package:divyam_excel_admin/models/main_text_data.dart';

class MainText extends StatelessWidget {
  const MainText({
    super.key,
    required this.data,
    this.alignment = DataAlignment.left,
  });

  final MainTextData data;
  final DataAlignment alignment;

  @override
  Widget build(BuildContext context) {
    return BodyText(
      text: data.text,
      color: data.textColor,
      textOverflow: data.textOverflow,
      textAlign:
          alignment == DataAlignment.left ? TextAlign.left : TextAlign.right,
    );
  }
}
