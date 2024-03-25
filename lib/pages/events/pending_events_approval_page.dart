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

class PendingEventsApprovalPage extends StatelessWidget {
  const PendingEventsApprovalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShadowedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionTitle(text: 'Pending Events Approval'),
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
                    PrimaryButton(label: 'Start Approving Events'),
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
                  3: FixedColumnWidth(240),
                  4: FixedColumnWidth(180),
                  5: FixedColumnWidth(50),
                  6: FixedColumnWidth(60),
                },
                columns: const [
                  {
                    'label': '#',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'Title',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'User',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'Period / Location',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'For Downline',
                    'alignment': DataAlignment.left,
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
                      mainText: 'Mumbai Jazz Festival - 2024',
                      mainTextOverflow: TextOverflow.ellipsis,
                      subText: 'This is the lorem ipsum for event description',
                      subTextOverflow: TextOverflow.ellipsis,
                      direction: Direction.vertical,
                    ),
                    MainTextData(
                        text: 'Shashwat Dharangaonkar',
                        textColor: kPrimaryColor),
                    MainSubTextData(
                      mainText: '88-88-8888 to 88-88-8888',
                      subText:
                          'Address this is the lorem ipsum for event description',
                      subTextOverflow: TextOverflow.ellipsis,
                      direction: Direction.vertical,
                    ),
                    MainSubTextData(
                      mainText: 'Yes',
                      subText: '9999999 notifications',
                      direction: Direction.vertical,
                    ),
                    MainTextData(text: 'Free'),
                    const ActionIcon(),
                  ],
                  [
                    MainTextData(text: '101'),
                    MainSubTextData(
                      mainText: 'Mumbai Jazz Festival - 2024',
                      mainTextOverflow: TextOverflow.ellipsis,
                      subText: 'This is the lorem ipsum for event description',
                      subTextOverflow: TextOverflow.ellipsis,
                      direction: Direction.vertical,
                    ),
                    MainTextData(
                        text: 'Shashwat Dharangaonkar',
                        textColor: kPrimaryColor),
                    MainSubTextData(
                      mainText: '88-88-8888 to 88-88-8888',
                      subText:
                          'Address this is the lorem ipsum for event description',
                      subTextOverflow: TextOverflow.ellipsis,
                      direction: Direction.vertical,
                    ),
                    MainSubTextData(
                      mainText: 'No',
                      subText: 'N/A',
                      direction: Direction.vertical,
                    ),
                    MainTextData(text: 'Paid'),
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
