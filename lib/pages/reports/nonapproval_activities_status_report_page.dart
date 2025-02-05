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

class NonApprovalActivitiesStatusReportPage extends StatelessWidget {
  const NonApprovalActivitiesStatusReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShadowedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionTitle(text: 'Non-Approval Activities Status Report'),
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
                    'label': 'Businesses',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Publications',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Ad Designers',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Blood Donors',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Snake Catchers',
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
        const SizedBox(height: 20),
        ShadowedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionTitle(
                  text: 'Non-Approval Activities Overview Report'),
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
                    'label': 'Publications',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Ad Designers',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Blood Donors',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Snake Catchers',
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
