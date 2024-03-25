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

class ComplaintsStatusReportPage extends StatelessWidget {
  const ComplaintsStatusReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShadowedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionTitle(text: 'Complaints Status Report'),
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
                columns: const [
                  {
                    'label': 'Type',
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
                    'label': 'Opened',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'On Hold',
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
                    MainTextData(text: 'Business'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                  ],
                  [
                    MainTextData(text: 'Offers'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                  ],
                  [
                    MainTextData(text: 'Events'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                  ],
                  [
                    MainTextData(text: 'Publications'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                    MainTextData(text: '99,99,999'),
                  ],
                  [
                    MainTextData(text: 'Famous'),
                    MainTextData(text: '99,99,999'),
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
              const SectionTitle(text: 'Complaints Overview Report'),
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
                columns: const [
                  {
                    'label': 'Businesses',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Offers',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Events',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Publications',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Famous',
                    'alignment': DataAlignment.right,
                  },
                ],
                rowsData: [
                  [
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
      ],
    );
  }
}
