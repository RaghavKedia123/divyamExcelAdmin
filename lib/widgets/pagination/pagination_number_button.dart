import 'package:divyam_excel_admin/constants/colors.dart';
import 'package:divyam_excel_admin/models/pagination_button_status.dart';
import 'package:divyam_excel_admin/widgets/body_text.dart';
import 'package:flutter/material.dart';

class PaginationNumberButton extends StatelessWidget {
  const PaginationNumberButton({
    super.key,
    required this.pageNumber,
    this.buttonStatus = ButtonStatus.inactive,
  });

  final int pageNumber;
  final ButtonStatus buttonStatus;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: buttonStatus == ButtonStatus.active
            ? kPrimaryColor
            : kRegularButtonBgColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: BodyText(
          text: pageNumber.toString(),
          color: buttonStatus == ButtonStatus.active
              ? Colors.white
              : kBodyTextColor,
        ),
      ),
    );
  }
}
