import 'package:divyam_excel_admin/models/column_name_icon_data.dart';
import 'package:divyam_excel_admin/widgets/filter_text_input.dart';
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
import 'package:unicons/unicons.dart';

class AllContestParticipantsPage extends StatelessWidget {
  const AllContestParticipantsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ShadowedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SectionTitle(text: 'Contest Participants'),
                const Divider(
                  height: 1,
                  color: kBorderColor,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 15,
                  ),
                  child: SeparatedRow(
                    children: const [
                      FilterTextInput.small(hintText: 'Min. views'),
                      FilterTextInput.small(hintText: 'Min. likes'),
                      FilterTextInput.small(hintText: 'Min. shares'),
                      FilterTextInput.small(hintText: 'Min. sales'),
                    ],
                    separatorBuilder: () => const SizedBox(width: 20),
                  ),
                ),
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // FilterButton.rowsCount(),
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
                    2: FixedColumnWidth(150),
                    3: FixedColumnWidth(150),
                    4: FixedColumnWidth(150),
                    5: FixedColumnWidth(150),
                  },
                  columns: [
                    const {
                      'label': '#',
                      'alignment': DataAlignment.left,
                    },
                    const {
                      'label': 'Participant',
                      'alignment': DataAlignment.left,
                    },
                    {
                      'label': ColumnNameIconData(
                        label: 'Views',
                        iconData: UniconsLine.sort_amount_down,
                      ),
                      'alignment': DataAlignment.right,
                    },
                    {
                      'label': ColumnNameIconData(
                        label: 'Likes',
                        iconData: UniconsLine.sort_amount_down,
                      ),
                      'alignment': DataAlignment.right,
                    },
                    {
                      'label': ColumnNameIconData(
                        label: 'Shares',
                        iconData: UniconsLine.sort_amount_down,
                      ),
                      'alignment': DataAlignment.right,
                    },
                    {
                      'label': ColumnNameIconData(
                        label: 'Sales',
                        iconData: UniconsLine.sort_amount_down,
                      ),
                      'alignment': DataAlignment.right,
                    },
                  ],
                  rowsData: [
                    [
                      MainTextData(text: '101'),
                      MainTextData(text: 'Shashwat Dharangaonkar'),
                      MainTextData(text: '9999999'),
                      MainTextData(text: '9999999'),
                      MainTextData(text: '9999999'),
                      MainTextData(text: '9999999'),
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
      ),
    );
  }
}
