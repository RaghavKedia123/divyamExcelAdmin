import 'package:flutter/material.dart';

import 'package:divyam_excel_admin/models/data_alignment.dart';
import 'package:divyam_excel_admin/models/main_sub_text_data.dart';
import 'package:divyam_excel_admin/widgets/body_text.dart';

class MainSubText extends StatelessWidget {
  const MainSubText({
    super.key,
    required this.data,
    this.alignment = DataAlignment.left,
  });

  final MainSubTextData data;
  final DataAlignment alignment;

  @override
  Widget build(BuildContext context) {
    Map<DataAlignment, CrossAxisAlignment> verticalAlignment = {
      DataAlignment.left: CrossAxisAlignment.start,
      DataAlignment.right: CrossAxisAlignment.end,
      DataAlignment.center: CrossAxisAlignment.center,
    };

    Map<DataAlignment, MainAxisAlignment> horizontalAlignment = {
      DataAlignment.left: MainAxisAlignment.start,
      DataAlignment.right: MainAxisAlignment.end,
      DataAlignment.center: MainAxisAlignment.center,
    };

    return data.direction == Direction.horizontal
        ? Row(
            mainAxisAlignment: horizontalAlignment[alignment]!,
            children: [
              BodyText(
                text: data.mainText,
                color: data.mainTextColor,
                textOverflow: data.mainTextOverflow,
              ),
              const SizedBox(width: 2),
              BodyText(
                text: data.subText,
                fontSize: 13,
                color: data.subTextColor,
                textOverflow: data.subTextOverflow,
              )
            ],
          )
        : Column(
            crossAxisAlignment: verticalAlignment[alignment]!,
            children: [
              BodyText(
                text: data.mainText,
                color: data.mainTextColor,
                textOverflow: data.mainTextOverflow,
              ),
              const SizedBox(height: 1),
              BodyText(
                text: data.subText,
                fontSize: 13,
                color: data.subTextColor,
                textOverflow: data.subTextOverflow,
              )
            ],
          );
  }
}
