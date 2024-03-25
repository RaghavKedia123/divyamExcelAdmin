import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';

import 'package:divyam_excel_admin/constants/colors.dart';
import 'package:divyam_excel_admin/models/data_alignment.dart';
import 'package:divyam_excel_admin/models/main_text_data.dart';
import 'package:divyam_excel_admin/models/pagination_button_status.dart';
import 'package:divyam_excel_admin/models/row_tag_data.dart';
import 'package:divyam_excel_admin/widgets/action_icon.dart';
import 'package:divyam_excel_admin/widgets/custom_table.dart';
import 'package:divyam_excel_admin/widgets/filter_button.dart';
import 'package:divyam_excel_admin/widgets/pagination/pagination_number_button.dart';
import 'package:divyam_excel_admin/widgets/pagination/pagination_text_button.dart';
import 'package:divyam_excel_admin/widgets/search_button.dart';
import 'package:divyam_excel_admin/widgets/section_title.dart';
import 'package:divyam_excel_admin/widgets/shadowed_box.dart';
import 'package:divyam_excel_admin/widgets/showing_entries_count.dart';
import 'package:divyam_excel_admin/widgets/table_bottom_row.dart';

class AllPublicationsPage extends StatelessWidget {
  const AllPublicationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShadowedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionTitle(text: 'All Publications'),
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
                    SearchButton(hintText: 'Publication title'),
                  ],
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
                    SeparatedRow(children: const [
                      // FilterButton.type(),
                      // FilterButton.location(),
                    ], separatorBuilder: () => const SizedBox(width: 20)),
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
                  3: FixedColumnWidth(120),
                  4: FixedColumnWidth(250),
                  5: FixedColumnWidth(105),
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
                    'label': 'Mobile',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'Email',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'Status',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'Action',
                    'alignment': DataAlignment.left,
                  },
                ],
                rowsData: [
                  [
                    MainTextData(text: '101'),
                    MainTextData(
                      text: 'The Times of India',
                      textOverflow: TextOverflow.ellipsis,
                    ),
                    MainTextData(
                      text: 'Shashwat Dharangaonkar',
                      textColor: kPrimaryColor,
                      textOverflow: TextOverflow.ellipsis,
                    ),
                    MainTextData(text: '8888888888'),
                    MainTextData(
                      text: 'verylongemail@verylongwebsite.com',
                      textOverflow: TextOverflow.ellipsis,
                    ),
                    RowTagData(tagLabel: 'Live', tagColor: TagColor.green),
                    const ActionIcon(),
                  ],
                  [
                    MainTextData(text: '101'),
                    MainTextData(
                      text: 'The Times of India',
                      textOverflow: TextOverflow.ellipsis,
                    ),
                    MainTextData(
                      text: 'Shashwat Dharangaonkar',
                      textColor: kPrimaryColor,
                      textOverflow: TextOverflow.ellipsis,
                    ),
                    MainTextData(text: '8888888888'),
                    MainTextData(
                      text: 'verylongemail@verylongwebsite.com',
                      textOverflow: TextOverflow.ellipsis,
                    ),
                    RowTagData(tagLabel: 'Future', tagColor: TagColor.cyan),
                    const ActionIcon(),
                  ],
                  [
                    MainTextData(text: '101'),
                    MainTextData(
                      text: 'The Times of India',
                      textOverflow: TextOverflow.ellipsis,
                    ),
                    MainTextData(
                      text: 'Shashwat Dharangaonkar',
                      textColor: kPrimaryColor,
                      textOverflow: TextOverflow.ellipsis,
                    ),
                    MainTextData(text: '8888888888'),
                    MainTextData(
                      text: 'verylongemail@verylongwebsite.com',
                      textOverflow: TextOverflow.ellipsis,
                    ),
                    RowTagData(tagLabel: 'Pending', tagColor: TagColor.orange),
                    const ActionIcon(),
                  ],
                  [
                    MainTextData(text: '101'),
                    MainTextData(
                      text: 'The Times of India',
                      textOverflow: TextOverflow.ellipsis,
                    ),
                    MainTextData(
                      text: 'Shashwat Dharangaonkar',
                      textColor: kPrimaryColor,
                      textOverflow: TextOverflow.ellipsis,
                    ),
                    MainTextData(text: '8888888888'),
                    MainTextData(
                      text: 'verylongemail@verylongwebsite.com',
                      textOverflow: TextOverflow.ellipsis,
                    ),
                    RowTagData(tagLabel: 'Suspended', tagColor: TagColor.red),
                    const ActionIcon(),
                  ],
                  [
                    MainTextData(text: '101'),
                    MainTextData(
                      text: 'The Times of India',
                      textOverflow: TextOverflow.ellipsis,
                    ),
                    MainTextData(
                      text: 'Shashwat Dharangaonkar',
                      textColor: kPrimaryColor,
                      textOverflow: TextOverflow.ellipsis,
                    ),
                    MainTextData(text: '8888888888'),
                    MainTextData(
                      text: 'verylongemail@verylongwebsite.com',
                      textOverflow: TextOverflow.ellipsis,
                    ),
                    RowTagData(tagLabel: 'expired', tagColor: TagColor.grey),
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
