import 'package:divyam_excel_admin/models/pagination_button_status.dart';
import 'package:flutter/material.dart';

import 'package:divyam_excel_admin/constants/colors.dart';
import 'package:divyam_excel_admin/widgets/body_text.dart';

enum ButtonType {
  first,
  previous,
  next,
  last,
}

class PaginationTextButton extends StatelessWidget {
  const PaginationTextButton({
    super.key,
    required this.buttonStatus,
    required this.buttonType,
  });

  final ButtonStatus buttonStatus;
  final ButtonType buttonType;

  @override
  Widget build(BuildContext context) {
    Map<ButtonType, String> buttonLabel = {
      ButtonType.first: 'First',
      ButtonType.previous: 'Previous',
      ButtonType.next: 'Next',
      ButtonType.last: 'Last',
    };

    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: kRegularButtonBgColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: BodyText(
          text: buttonLabel[buttonType]!,
          color: buttonStatus == ButtonStatus.disabled
              ? kButtonTextColorDisabled
              : kBodyTextColor,
        ),
      ),
    );
  }
}
