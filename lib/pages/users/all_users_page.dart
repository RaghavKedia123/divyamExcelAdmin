import 'package:divyam_excel_admin/models/main_sub_text_data.dart';
import 'package:divyam_excel_admin/widgets/export_to_excel.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';

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

class AllUsersPage extends StatelessWidget {
  const AllUsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShadowedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionTitle(text: 'All Users'),
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
                    // FilterButton.location(),
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
                  1: FixedColumnWidth(250),
                  2: FixedColumnWidth(120),
                  6: FixedColumnWidth(150),
                  7: FixedColumnWidth(150),
                },
                columns: const [
                  {
                    'label': '#',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'Name',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'Type',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'Views',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Likes',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Shares',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Sales',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Downline',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Referrals',
                    'alignment': DataAlignment.right,
                  },
                ],
                rowsData: [
                  [
                    MainTextData(text: '101'),
                    MainTextData(
                        text: 'Shashwat Dharangaonkar',
                        textColor: kPrimaryColor),
                    MainTextData(text: 'Basic'),
                    MainTextData(text: '99.99 L'),
                    MainTextData(text: '99.94 L'),
                    MainTextData(text: '99.99 L'),
                    MainTextData(text: '₹ 9999999.00'),
                    MainSubTextData(
                        mainText: '99.99 L',
                        subText: '(Lvl4)',
                        direction: Direction.horizontal),
                    MainTextData(text: '99.99 L'),
                  ],
                  [
                    MainTextData(text: '101'),
                    MainTextData(
                        text: 'Shashwat Dharangaonkar',
                        textColor: kPrimaryColor),
                    MainTextData(text: 'MLM'),
                    MainTextData(text: '99.99 L'),
                    MainTextData(text: '99.94 L'),
                    MainTextData(text: '99.99 L'),
                    MainTextData(text: '₹ 9999999.00'),
                    MainSubTextData(
                        mainText: '99.99 L',
                        subText: '(Lvl4)',
                        direction: Direction.horizontal),
                    MainTextData(text: '99.99 L'),
                  ],
                  [
                    MainTextData(text: '101'),
                    MainTextData(
                        text: 'Shashwat Dharangaonkar',
                        textColor: kPrimaryColor),
                    MainTextData(text: 'Sales agent'),
                    MainTextData(text: '99.99 L'),
                    MainTextData(text: '99.94 L'),
                    MainTextData(text: '99.99 L'),
                    MainTextData(text: '₹ 9999999.00'),
                    MainSubTextData(
                        mainText: '99.99 L',
                        subText: '(Lvl4)',
                        direction: Direction.horizontal),
                    MainTextData(text: '99.99 L'),
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
                        SizedBox(height: 10),
                        ExportToExcel(),
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
