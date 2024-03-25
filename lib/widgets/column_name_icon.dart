import 'package:divyam_excel_admin/constants/colors.dart';
import 'package:divyam_excel_admin/widgets/body_text.dart';
import 'package:flutter/material.dart';

import 'package:divyam_excel_admin/models/column_name_icon_data.dart';

class ColumnNameIcon extends StatelessWidget {
  const ColumnNameIcon({
    super.key,
    required this.data,
    required this.alignment,
  });

  final ColumnNameIconData data;
  final MainAxisAlignment alignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: alignment,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        BodyText(
          text: data.label.toUpperCase(),
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: data.labelColor,
        ),
        const SizedBox(width: 5),
        Icon(
          data.iconData,
          color: kBodyTextColor,
          size: 20,
        ),
      ],
    );
  }
}
