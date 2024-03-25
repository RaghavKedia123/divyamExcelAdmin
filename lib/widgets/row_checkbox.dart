import 'package:flutter/material.dart';

import 'package:divyam_excel_admin/constants/colors.dart';
import 'package:divyam_excel_admin/models/row_checkbox_data.dart';

class RowCheckbox extends StatelessWidget {
  const RowCheckbox({
    super.key,
    required this.data,
  });

  final RowCheckboxData data;

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
