import 'package:divyam_excel_admin/constants/colors.dart';
import 'package:divyam_excel_admin/models/data_alignment.dart';
import 'package:divyam_excel_admin/models/main_text_tag_data.dart';
import 'package:divyam_excel_admin/models/row_tag_data.dart';
import 'package:divyam_excel_admin/widgets/body_text.dart';
import 'package:flutter/material.dart';

class MainTextTag extends StatelessWidget {
  const MainTextTag({
    super.key,
    required this.data,
    required this.alignment,
  });

  final MainTextTagData data;
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

    return data.direction == Direction.horizontal
        ? Row(
            mainAxisAlignment: horizontalAlignment[alignment]!,
            children: [
              BodyText(
                text: data.mainText,
                color: data.mainTextColor,
              ),
              const SizedBox(width: 2),
              Container(
                height: 24,
                padding:
                    const EdgeInsets.symmetric(horizontal: 11, vertical: 5),
                decoration: BoxDecoration(
                  color: tagColors[data.tagColor]!['bgColor'],
                  borderRadius: BorderRadius.circular(5),
                ),
                child: BodyText(
                  text: data.tagText,
                  color: tagColors[data.tagColor]!['textColor']!,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          )
        : Column(
            crossAxisAlignment: verticalAlignment[alignment]!,
            children: [
              BodyText(
                text: data.mainText,
                color: data.mainTextColor,
              ),
              const SizedBox(height: 1),
              Container(
                height: 24,
                padding:
                    const EdgeInsets.symmetric(horizontal: 11, vertical: 5),
                decoration: BoxDecoration(
                  color: tagColors[data.tagColor]!['bgColor'],
                  borderRadius: BorderRadius.circular(5),
                ),
                child: BodyText(
                  text: data.tagText,
                  color: tagColors[data.tagColor]!['textColor']!,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          );
  }
}
