import 'package:flutter/material.dart';

import 'package:divyam_excel_admin/models/row_tag_data.dart';
import 'package:divyam_excel_admin/widgets/body_text.dart';
import 'package:divyam_excel_admin/constants/colors.dart';

class RowTag extends StatelessWidget {
  const RowTag({
    super.key,
    required this.data,
  });

  final RowTagData data;

  @override
  Widget build(BuildContext context) {
    Map<TagColor, Map<String, Color>> tagColors = {
      TagColor.green: {
        'bgColor': kGreenTagBgColor,
        'textColor': kGreenTagTextColor,
      },
      TagColor.cyan: {
        'bgColor': kCyanTagBgColor,
        'textColor': kCyanTagTextColor,
      },
      TagColor.orange: {
        'bgColor': kOrangeTagBgColor,
        'textColor': kOrangeTagTextColor,
      },
      TagColor.red: {
        'bgColor': kRedTagBgColor,
        'textColor': kRedTagTextColor,
      },
      TagColor.grey: {
        'bgColor': kGreyTagBgColor,
        'textColor': kGreyTagTextColor,
      },
    };

    return Row(
      children: [
        Container(
          height: 24,
          padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 5),
          decoration: BoxDecoration(
            color: tagColors[data.tagColor]!['bgColor'],
            borderRadius: BorderRadius.circular(5),
          ),
          child: BodyText(
            text: data.tagLabel,
            color: tagColors[data.tagColor]!['textColor']!,
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
