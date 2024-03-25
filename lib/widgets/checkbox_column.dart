import 'package:flutter/material.dart';

import 'package:divyam_excel_admin/constants/colors.dart';
import 'package:divyam_excel_admin/models/checkbox_column_data.dart';

class CheckboxColumn extends StatelessWidget {
  const CheckboxColumn({
    super.key,
    required this.data,
  });

  final CheckboxColumnData data;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          value: data.value,
          onChanged: data.onChanged,
          side: const BorderSide(
            color: kBorderColor,
            width: 1.5,
          ),
        ),
      ],
    );
  }
}
