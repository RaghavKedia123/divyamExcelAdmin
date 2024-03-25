import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';

import 'package:divyam_excel_admin/models/main_sub_text_data.dart';
import 'package:divyam_excel_admin/widgets/action_icon.dart';
import 'package:divyam_excel_admin/widgets/primary_button.dart';
import 'package:divyam_excel_admin/models/pagination_button_status.dart';
import 'package:divyam_excel_admin/widgets/pagination/pagination_number_button.dart';
import 'package:divyam_excel_admin/widgets/pagination/pagination_text_button.dart';
import 'package:divyam_excel_admin/widgets/showing_entries_count.dart';
import 'package:divyam_excel_admin/widgets/table_bottom_row.dart';
import 'package:divyam_excel_admin/widgets/section_title.dart';
import 'package:divyam_excel_admin/widgets/shadowed_box.dart';
import 'package:divyam_excel_admin/widgets/filter_button.dart';
import 'package:divyam_excel_admin/constants/colors.dart';
import 'package:divyam_excel_admin/models/data_alignment.dart';
import 'package:divyam_excel_admin/models/main_text_data.dart';
import 'package:divyam_excel_admin/widgets/custom_table.dart';

class PendingOffersApprovalPage extends StatelessWidget {
  const PendingOffersApprovalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShadowedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionTitle(text: 'Pending Offers Approval'),
              const Divider(
                height: 1,
                color: kBorderColor,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // FilterButton.rowsCount(),
                    PrimaryButton(label: 'Start Approving Offers'),
                  ],
                ),
              ),
              const Divider(
                height: 1,
                color: kBorderColor,
              ),
              CustomTable(
                columnWidths: const {
                  0: FixedColumnWidth(50),
                  1: FixedColumnWidth(300),
                  2: FixedColumnWidth(250),
                  3: FixedColumnWidth(120),
                  4: FixedColumnWidth(120),
                  5: FixedColumnWidth(130),
                  6: FixedColumnWidth(60),
                },
                columns: const [
                  {
                    'label': '#',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'Offer',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'Business Listing',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'Impressions',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Amount',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Type',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'Action',
                    'alignment': DataAlignment.right,
                  },
                ],
                rowsData: [
                  [
                    MainTextData(text: '101'),
                    MainSubTextData(
                      mainText: 'Flat 25% off on select brands',
                      mainTextOverflow: TextOverflow.ellipsis,
                      subText: 'This is the lorem ipsum for offer description',
                      subTextOverflow: TextOverflow.ellipsis,
                      direction: Direction.vertical,
                    ),
                    MainTextData(
                        text: 'Didwaniya Super Bazar',
                        textColor: kPrimaryColor),
                    MainTextData(text: '9999999'),
                    MainTextData(text: '9999999.00'),
                    MainTextData(text: 'Entry Screen'),
                    const ActionIcon(),
                  ],
                  [
                    MainTextData(text: '101'),
                    MainSubTextData(
                      mainText: 'Flat 25% off on select brands',
                      mainTextOverflow: TextOverflow.ellipsis,
                      subText: 'This is the lorem ipsum for offer description',
                      subTextOverflow: TextOverflow.ellipsis,
                      direction: Direction.vertical,
                    ),
                    MainTextData(
                        text: 'Didwaniya Super Bazar',
                        textColor: kPrimaryColor),
                    MainTextData(text: '9999999'),
                    MainTextData(text: '9999999.00'),
                    MainTextData(text: 'Entry Screen'),
                    const ActionIcon(),
                  ],
                  [
                    MainTextData(text: '101'),
                    MainSubTextData(
                      mainText: 'Flat 25% off on select brands',
                      mainTextOverflow: TextOverflow.ellipsis,
                      subText: 'This is the lorem ipsum for offer description',
                      subTextOverflow: TextOverflow.ellipsis,
                      direction: Direction.vertical,
                    ),
                    MainTextData(
                        text: 'Didwaniya Super Bazar',
                        textColor: kPrimaryColor),
                    MainTextData(text: '9999999'),
                    MainTextData(text: '9999999.00'),
                    MainTextData(text: 'Entry Screen'),
                    const ActionIcon(),
                  ],
                ],
              ),
              const Divider(
                height: 1,
                color: kBorderColor,
              ),
              TableBottomRow(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ShowingEntriesCount(),
                      ],
                    ),
                    SeparatedRow(
                      children: const [
                        PaginationTextButton(
                          buttonStatus: ButtonStatus.disabled,
                          buttonType: ButtonType.first,
                        ),
                        PaginationTextButton(
                          buttonStatus: ButtonStatus.disabled,
                          buttonType: ButtonType.previous,
                        ),
                        PaginationNumberButton(
                          pageNumber: 1,
                          buttonStatus: ButtonStatus.active,
                        ),
                        PaginationNumberButton(pageNumber: 2),
                        PaginationNumberButton(pageNumber: 3),
                        PaginationNumberButton(pageNumber: 4),
                        PaginationTextButton(
                          buttonStatus: ButtonStatus.inactive,
                          buttonType: ButtonType.next,
                        ),
                        PaginationTextButton(
                          buttonStatus: ButtonStatus.inactive,
                          buttonType: ButtonType.last,
                        ),
                      ],
                      separatorBuilder: () => const SizedBox(width: 5),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
