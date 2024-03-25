import 'package:divyam_excel_admin/constants/colors.dart';
import 'package:divyam_excel_admin/widgets/body_text.dart';
import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key,
    required this.hintText,
  });

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 275,
      height: 40,
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: kBorderColor,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BodyText(
            text: hintText,
            fontWeight: FontWeight.w500,
            color: kHintTextColor,
          ),
          const Icon(
            Icons.search,
            color: kBorderColor,
            size: 20,
          ),
        ],
      ),
    );
  }
}
