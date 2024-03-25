import 'package:divyam_excel_admin/models/row_tag_data.dart';
import 'package:divyam_excel_admin/widgets/action_icon.dart';
import 'package:divyam_excel_admin/widgets/search_button.dart';
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

class DailyPrizeOverviewReport extends StatelessWidget {
  const DailyPrizeOverviewReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShadowedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionTitle(text: 'Daily Prize Overview'),
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
                    SearchButton(hintText: 'Taluka / Area name'),
                  ],
                  separatorBuilder: () => const SizedBox(width: 20),
                ),
              ),
              const Divider(
                height: 1,
                color: kBorderColor,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // const FilterButton.rowsCount(),
                    SeparatedRow(
                      children: const [
                        // FilterButton.period(),
                        // FilterButton.location(),
                      ],
                      separatorBuilder: () => const SizedBox(width: 20),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 1,
                color: kBorderColor,
              ),
              CustomTable(
                columns: const [
                  {
                    'label': 'Organized Count',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Successful Count',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Failed Count',
                    'alignment': DataAlignment.right,
                  },
                ],
                rowsData: [
                  [
                    MainTextData(text: '9999999'),
                    MainTextData(text: '9999999'),
                    MainTextData(text: '9999999'),
                  ],
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        ShadowedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionTitle(text: 'All Daily Prize Contests'),
              const Divider(
                height: 1,
                color: kBorderColor,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SearchButton(hintText: 'Event title'),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // const FilterButton.rowsCount(),
                        SeparatedRow(
                          children: const [
                            // FilterButton.type(),
                            // FilterButton.location(),
                          ],
                          separatorBuilder: () => const SizedBox(width: 20),
                        ),
                      ],
                    ),
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
                  1: FixedColumnWidth(120),
                  2: FixedColumnWidth(120),
                  3: FixedColumnWidth(120),
                  5: FixedColumnWidth(90),
                  6: FixedColumnWidth(60),
                },
                columns: const [
                  {
                    'label': '#',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'Started On',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'Duration',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'Result On',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'Task',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'Status',
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
                    MainTextData(text: '88-88-8888'),
                    MainTextData(text: '15 days'),
                    MainTextData(text: '88-88-8888'),
                    MainTextData(text: 'Like at least 200 offers'),
                    RowTagData(tagLabel: 'Live', tagColor: TagColor.green),
                    const ActionIcon(),
                  ],
                  [
                    MainTextData(text: '101'),
                    MainTextData(text: '88-88-8888'),
                    MainTextData(text: '15 days'),
                    MainTextData(text: '88-88-8888'),
                    MainTextData(text: 'Like at least 200 offers'),
                    RowTagData(tagLabel: 'Future', tagColor: TagColor.cyan),
                    const ActionIcon(),
                  ],
                  [
                    MainTextData(text: '101'),
                    MainTextData(text: '88-88-8888'),
                    MainTextData(text: '15 days'),
                    MainTextData(text: '88-88-8888'),
                    MainTextData(text: 'Like at least 200 offers'),
                    RowTagData(tagLabel: 'Pending', tagColor: TagColor.orange),
                    const ActionIcon(),
                  ],
                  [
                    MainTextData(text: '101'),
                    MainTextData(text: '88-88-8888'),
                    MainTextData(text: '15 days'),
                    MainTextData(text: '88-88-8888'),
                    MainTextData(text: 'Like at least 200 offers'),
                    RowTagData(tagLabel: 'Expired', tagColor: TagColor.grey),
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
