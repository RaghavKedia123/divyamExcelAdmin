import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';

import 'package:divyam_excel_admin/models/main_sub_column_name_data.dart';
import 'package:divyam_excel_admin/widgets/body_text.dart';

class MainSubColumnName extends StatelessWidget {
  const MainSubColumnName({
    super.key,
    required this.data,
    required this.alignment,
  });

  final MainSubColumnNameData data;
  final MainAxisAlignment alignment;

  @override
  Widget build(BuildContext context) {
    return SeparatedRow(
      separatorBuilder: () => const SizedBox(width: 3),
      mainAxisAlignment: alignment,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      children: [
        BodyText(
          text: data.mainText.toUpperCase(),
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: data.mainTextColor,
        ),
        BodyText(
          text: data.subText,
          fontSize: 11,
          fontWeight: FontWeight.w500,
          color: data.subTextColor,
        ),
      ],
    );
  }
}
