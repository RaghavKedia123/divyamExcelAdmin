import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';

import 'package:divyam_excel_admin/widgets/table_bottom_row.dart';
import 'package:divyam_excel_admin/widgets/section_title.dart';
import 'package:divyam_excel_admin/widgets/shadowed_box.dart';
import 'package:divyam_excel_admin/widgets/filter_button.dart';
import 'package:divyam_excel_admin/constants/colors.dart';
import 'package:divyam_excel_admin/models/data_alignment.dart';
import 'package:divyam_excel_admin/models/main_text_data.dart';
import 'package:divyam_excel_admin/widgets/custom_table.dart';

class TicketsStatusReportPage extends StatelessWidget {
  const TicketsStatusReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShadowedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionTitle(text: 'Tickets Status Report'),
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
                    // FilterButton.location(),
                  ],
                ),
              ),
              const Divider(
                height: 1,
                color: kBorderColor,
              ),
              CustomTable(
                columnWidths: const {0: FixedColumnWidth(250)},
                columns: const [
                  {
                    'label': 'Department',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'Total',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Pending',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Closed',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Referred',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Flagged',
                    'alignment': DataAlignment.right,
                  },
                ],
                rowsData: [
                  [
                    MainTextData(text: 'Customer Support'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                  ],
                  [
                    MainTextData(text: 'Accounting'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                  ],
                  [
                    MainTextData(text: 'Sales & Marketing'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                  ],
                  [
                    MainTextData(text: 'Legal'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
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
                    SizedBox.shrink(),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        ShadowedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionTitle(text: 'Tickets Overview Report'),
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
                columns: const [
                  {
                    'label': 'Department',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'Total',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Referred',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Flagged',
                    'alignment': DataAlignment.right,
                  },
                ],
                rowsData: [
                  [
                    MainTextData(text: 'Customer Support'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                  ],
                  [
                    MainTextData(text: 'Accounting'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                  ],
                  [
                    MainTextData(text: 'Sales & Marketing'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                  ],
                  [
                    MainTextData(text: 'Legal'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
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
                    SizedBox.shrink(),
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
