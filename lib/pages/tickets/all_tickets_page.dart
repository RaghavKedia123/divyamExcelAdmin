import 'package:divyam_excel_admin/widgets/search_button.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';

import 'package:divyam_excel_admin/models/row_tag_data.dart';
import 'package:divyam_excel_admin/widgets/action_icon.dart';
import 'package:divyam_excel_admin/models/pagination_button_status.dart';
import 'package:divyam_excel_admin/widgets/export_to_excel.dart';
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

class AllTicketsPage extends StatelessWidget {
  const AllTicketsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShadowedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionTitle(text: 'All Tickets'),
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
                  children: [SearchButton(hintText: 'Requester')],
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
                      separatorBuilder: () => const SizedBox(width: 20),
                      children: const [
                        // FilterButton.period(),
                        // FilterButton.location(),
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
                  2: FixedColumnWidth(170),
                  3: FixedColumnWidth(220),
                  4: FixedColumnWidth(90),
                  5: FixedColumnWidth(180),
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
                    'label': 'Department',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'Requester',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'Status',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'Last Modified',
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
                    MainTextData(
                      text: 'I cannot find my bonus for the previous week',
                      textOverflow: TextOverflow.ellipsis,
                    ),
                    MainTextData(text: 'Technical'),
                    MainTextData(
                      text: 'Shashwat Dharangaonkar',
                      textColor: kPrimaryColor,
                    ),
                    RowTagData(
                      tagColor: TagColor.green,
                      tagLabel: 'Closed',
                    ),
                    MainTextData(text: '88-88-8888 88:88 AM'),
                    const ActionIcon(),
                  ],
                  [
                    MainTextData(text: '101'),
                    MainTextData(
                      text: 'I cannot find my bonus for the previous week',
                      textOverflow: TextOverflow.ellipsis,
                    ),
                    MainTextData(text: 'Technical'),
                    MainTextData(
                      text: 'Shashwat Dharangaonkar',
                      textColor: kPrimaryColor,
                    ),
                    RowTagData(
                      tagColor: TagColor.green,
                      tagLabel: 'Closed',
                    ),
                    MainTextData(text: '88-88-8888 88:88 AM'),
                    const ActionIcon(),
                  ],
                  [
                    MainTextData(text: '101'),
                    MainTextData(
                      text: 'I cannot find my bonus for the previous week',
                      textOverflow: TextOverflow.ellipsis,
                    ),
                    MainTextData(text: 'Technical'),
                    MainTextData(
                      text: 'Shashwat Dharangaonkar',
                      textColor: kPrimaryColor,
                    ),
                    RowTagData(
                      tagColor: TagColor.green,
                      tagLabel: 'Closed',
                    ),
                    MainTextData(text: '88-88-8888 88:88 AM'),
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
