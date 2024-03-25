import 'package:flutter/material.dart';

import 'package:divyam_excel_admin/constants/colors.dart';
import 'package:divyam_excel_admin/widgets/body_text.dart';

class ShowingEntriesCount extends StatelessWidget {
  const ShowingEntriesCount({super.key});

  @override
  Widget build(BuildContext context) {
    return const BodyText(
      text: 'Showing 10 of 45 entries',
      fontSize: 13,
      color: kSubTextColor,
    );
  }
}
