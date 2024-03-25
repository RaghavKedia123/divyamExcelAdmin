import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';

import 'package:divyam_excel_admin/widgets/table_bottom_row.dart';
import 'package:divyam_excel_admin/widgets/export_to_excel.dart';
import 'package:divyam_excel_admin/widgets/section_title.dart';
import 'package:divyam_excel_admin/widgets/shadowed_box.dart';
import 'package:divyam_excel_admin/widgets/filter_button.dart';
import 'package:divyam_excel_admin/constants/colors.dart';
import 'package:divyam_excel_admin/models/data_alignment.dart';
import 'package:divyam_excel_admin/models/main_sub_text_data.dart';
import 'package:divyam_excel_admin/models/main_text_data.dart';
import 'package:divyam_excel_admin/widgets/custom_table.dart';

class SalesOverviewReportPage extends StatelessWidget {
  const SalesOverviewReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShadowedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionTitle(text: 'Sales Overview Report'),
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
                  children: [
                    FilterButton.period(),
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
                    'label': 'Sales Type',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'Entry Screen',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Exit Screen',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Banner',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Regular (B2C)',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Regular (B2B)',
                    'alignment': DataAlignment.right,
                  },
                ],
                rowsData: [
                  [
                    MainTextData(text: 'New sales'),
                    MainSubTextData(
                      mainText: '₹ 99,99,999.00',
                      subText: '(999.00%)',
                      direction: Direction.vertical,
                    ),
                    MainSubTextData(
                      mainText: '₹ 99,99,999.00',
                      subText: '(999.00%)',
                      direction: Direction.vertical,
                    ),
                    MainSubTextData(
                      mainText: '₹ 99,99,999.00',
                      subText: '(999.00%)',
                      direction: Direction.vertical,
                    ),
                    MainSubTextData(
                      mainText: '₹ 99,99,999.00',
                      subText: '(999.00%)',
                      direction: Direction.vertical,
                    ),
                    MainSubTextData(
                      mainText: '₹ 99,99,999.00',
                      subText: '(999.00%)',
                      direction: Direction.vertical,
                    ),
                  ],
                  [
                    MainTextData(text: 'Repeat sales'),
                    MainSubTextData(
                      mainText: '₹ 99,99,999.00',
                      subText: '(999.00%)',
                      direction: Direction.vertical,
                    ),
                    MainSubTextData(
                      mainText: '₹ 99,99,999.00',
                      subText: '(999.00%)',
                      direction: Direction.vertical,
                    ),
                    MainSubTextData(
                      mainText: '₹ 99,99,999.00',
                      subText: '(999.00%)',
                      direction: Direction.vertical,
                    ),
                    MainSubTextData(
                      mainText: '₹ 99,99,999.00',
                      subText: '(999.00%)',
                      direction: Direction.vertical,
                    ),
                    MainSubTextData(
                      mainText: '₹ 99,99,999.00',
                      subText: '(999.00%)',
                      direction: Direction.vertical,
                    ),
                  ],
                  [
                    MainTextData(text: 'Total sales'),
                    MainSubTextData(
                      mainText: '₹ 99,99,999.00',
                      subText: '(999.00%)',
                      direction: Direction.vertical,
                    ),
                    MainSubTextData(
                      mainText: '₹ 99,99,999.00',
                      subText: '(999.00%)',
                      direction: Direction.vertical,
                    ),
                    MainSubTextData(
                      mainText: '₹ 99,99,999.00',
                      subText: '(999.00%)',
                      direction: Direction.vertical,
                    ),
                    MainSubTextData(
                      mainText: '₹ 99,99,999.00',
                      subText: '(999.00%)',
                      direction: Direction.vertical,
                    ),
                    MainSubTextData(
                      mainText: '₹ 99,99,999.00',
                      subText: '(999.00%)',
                      direction: Direction.vertical,
                    ),
                  ],
                ],
              ),
              const Divider(
                height: 1,
                color: kBorderColor,
              ),
              const TableBottomRow(
                child: Row(
                  children: [
                    ExportToExcel(),
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
