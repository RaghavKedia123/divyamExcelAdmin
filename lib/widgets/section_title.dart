import 'package:flutter/material.dart';

import 'package:divyam_excel_admin/widgets/section_title_text.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 25,
      ),
      child: SectionTitleText(text: text),
    );
  }
}
