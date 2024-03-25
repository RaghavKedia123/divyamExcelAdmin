import 'package:flutter/material.dart';

import 'package:divyam_excel_admin/constants/colors.dart';
import 'package:divyam_excel_admin/widgets/body_text.dart';

class ExportToExcel extends StatelessWidget {
  const ExportToExcel({super.key});

  @override
  Widget build(BuildContext context) {
    return const BodyText(
      text: 'Export to Excel',
      fontSize: 13,
      color: kPrimaryColor,
    );
  }
}
