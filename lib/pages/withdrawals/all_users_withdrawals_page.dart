import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';

import 'package:divyam_excel_admin/models/pagination_button_status.dart';
import 'package:divyam_excel_admin/models/row_tag_data.dart';
import 'package:divyam_excel_admin/widgets/filter_text_input.dart';
import 'package:divyam_excel_admin/widgets/pagination/pagination_number_button.dart';
import 'package:divyam_excel_admin/widgets/pagination/pagination_text_button.dart';
import 'package:divyam_excel_admin/widgets/search_button.dart';
import 'package:divyam_excel_admin/widgets/showing_entries_count.dart';
import 'package:divyam_excel_admin/widgets/table_bottom_row.dart';
import 'package:divyam_excel_admin/widgets/section_title.dart';
import 'package:divyam_excel_admin/widgets/shadowed_box.dart';
import 'package:divyam_excel_admin/widgets/filter_button.dart';
import 'package:divyam_excel_admin/constants/colors.dart';
import 'package:divyam_excel_admin/models/data_alignment.dart';
import 'package:divyam_excel_admin/models/main_text_data.dart';
import 'package:divyam_excel_admin/widgets/custom_table.dart';

class AllUsersWithdrawalsPage extends StatelessWidget {
  const AllUsersWithdrawalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShadowedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionTitle(text: 'Withdrawals Overview Report'),
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
                  separatorBuilder: () => const SizedBox(width: 20),
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    // FilterButton.period(),
                    // FilterButton.location(),
                  ],
                ),
              ),
              const Divider(
                height: 1,
                color: kBorderColor,
              ),
              CustomTable(
                columnWidths: const {0: FixedColumnWidth(120)},
                columns: const [
                  {
                    'label': 'Type',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'Amount',
                    'alignment': DataAlignment.right,
                  },
                ],
                rowsData: [
                  [
                    MainTextData(text: 'Franchise'),
                    MainTextData(text: '₹ 99,99,999.00'),
                  ],
                  [
                    MainTextData(text: 'Franchise'),
                    MainTextData(text: '₹ 99,99,999.00'),
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
              const SectionTitle(text: 'All Users Withdrawals'),
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
                  separatorBuilder: () => const SizedBox(width: 20),
                  children: const [
                    SearchButton(hintText: 'Name'),
                    FilterTextInput(hintText: 'Amount from'),
                    FilterTextInput(hintText: 'Amount to'),
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
                  0: FixedColumnWidth(70),
                  1: FixedColumnWidth(250),
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
                    'label': 'Amount',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Status',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'Last Modified',
                    'alignment': DataAlignment.left,
                  },
                ],
                rowsData: [
                  [
                    MainTextData(text: '101'),
                    MainTextData(
                        text: 'Shashwat Dharangaonkar',
                        textColor: kPrimaryColor),
                    MainTextData(text: 'Franchise'),
                    MainTextData(text: '₹ 99,99,999.00'),
                    RowTagData(tagLabel: 'Paid', tagColor: TagColor.green),
                    MainTextData(text: '88-88-8888 88:88 AM'),
                  ],
                  [
                    MainTextData(text: '101'),
                    MainTextData(
                        text: 'Shashwat Dharangaonkar',
                        textColor: kPrimaryColor),
                    MainTextData(text: 'Franchise'),
                    MainTextData(text: '₹ 99,99,999.00'),
                    RowTagData(tagLabel: 'Held', tagColor: TagColor.orange),
                    MainTextData(text: '88-88-8888 88:88 AM'),
                  ],
                  [
                    MainTextData(text: '101'),
                    MainTextData(
                        text: 'Shashwat Dharangaonkar',
                        textColor: kPrimaryColor),
                    MainTextData(text: 'Franchise'),
                    MainTextData(text: '₹ 99,99,999.00'),
                    RowTagData(tagLabel: 'Pending', tagColor: TagColor.purple),
                    MainTextData(text: '88-88-8888 88:88 AM'),
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
