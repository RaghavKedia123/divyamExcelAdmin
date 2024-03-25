import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';

import 'package:divyam_excel_admin/models/main_sub_column_name_data.dart';
import 'package:divyam_excel_admin/models/pagination_button_status.dart';
import 'package:divyam_excel_admin/widgets/export_to_excel.dart';
import 'package:divyam_excel_admin/widgets/pagination/pagination_number_button.dart';
import 'package:divyam_excel_admin/widgets/pagination/pagination_text_button.dart';
import 'package:divyam_excel_admin/widgets/showing_entries_count.dart';
import 'package:divyam_excel_admin/widgets/table_bottom_row.dart';
import 'package:divyam_excel_admin/constants/colors.dart';
import 'package:divyam_excel_admin/models/data_alignment.dart';
import 'package:divyam_excel_admin/models/main_text_data.dart';
import 'package:divyam_excel_admin/widgets/custom_table.dart';
import 'package:divyam_excel_admin/widgets/filter_button.dart';
import 'package:divyam_excel_admin/widgets/section_title.dart';
import 'package:divyam_excel_admin/widgets/shadowed_box.dart';

class CommissionOverviewReportPage extends StatelessWidget {
  const CommissionOverviewReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShadowedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionTitle(text: 'Commission Overview Report'),
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
                        // FilterButton(text: 'Commission week', width: 240),
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
                  1: FixedColumnWidth(220),
                },
                columns: [
                  const {
                    'label': '#',
                    'alignment': DataAlignment.left,
                  },
                  const {
                    'label': 'Payment Week',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': MainSubColumnNameData(
                        mainText: 'MLM', subText: '(40%)'),
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': MainSubColumnNameData(
                        mainText: 'Agents', subText: '(20%)'),
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': MainSubColumnNameData(
                        mainText: 'Franchise', subText: '(10%)'),
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': MainSubColumnNameData(
                        mainText: 'Special', subText: '(10%)'),
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': MainSubColumnNameData(
                        mainText: 'Total', subText: '(80%)'),
                    'alignment': DataAlignment.right,
                  },
                ],
                rowsData: [
                  [
                    MainTextData(text: '101'),
                    MainTextData(text: '88-88-8888 to 88-88-8888'),
                    MainTextData(text: '₹ 9999999.00'),
                    MainTextData(text: '₹ 9999999.00'),
                    MainTextData(text: '₹ 9999999.00'),
                    MainTextData(text: '₹ 9999999.00'),
                    MainTextData(text: '₹ 9999999.00'),
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
