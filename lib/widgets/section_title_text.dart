import 'package:flutter/material.dart';

class SectionTitleText extends StatelessWidget {
  const SectionTitleText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        letterSpacing: 1,
      ),
    );
  }
}
