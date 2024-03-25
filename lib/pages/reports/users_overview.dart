import 'package:flutter/material.dart';
import 'package:flextras/flextras.dart';

import 'package:divyam_excel_admin/constants/colors.dart';
import 'package:divyam_excel_admin/models/data_alignment.dart';
import 'package:divyam_excel_admin/models/main_sub_text_data.dart';
import 'package:divyam_excel_admin/models/main_text_data.dart';
import 'package:divyam_excel_admin/widgets/custom_table.dart';
import 'package:divyam_excel_admin/widgets/filter_button.dart';
import 'package:divyam_excel_admin/widgets/section_title.dart';
import 'package:divyam_excel_admin/widgets/shadowed_box.dart';

class UsersOverviewPage extends StatelessWidget {
  const UsersOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShadowedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionTitle(text: 'Users Overview'),
              const Divider(
                height: 1,
                color: kBorderColor,
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
                    // const FilterButton.period(),
                    SeparatedRow(
                      separatorBuilder: () => const SizedBox(width: 20),
                      children: const [
                        // FilterButton.type(),
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
                columns: const [
                  {
                    'label': 'USERS TYPE',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'TOTAL',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'ACTIVE',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'INACTIVE',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'UNINSTALLS',
                    'alignment': DataAlignment.right,
                  },
                ],
                rowsData: [
                  [
                    MainTextData(text: 'Basic users'),
                    MainSubTextData(
                      mainText: '6132',
                      subText: '(7.2%)',
                      direction: Direction.horizontal,
                    ),
                    MainSubTextData(
                      mainText: '6132',
                      subText: '(7.2%)',
                      direction: Direction.horizontal,
                    ),
                    MainSubTextData(
                      mainText: '6132',
                      subText: '(7.2%)',
                      direction: Direction.horizontal,
                    ),
                    MainSubTextData(
                      mainText: '6132',
                      subText: '(7.2%)',
                      direction: Direction.horizontal,
                    ),
                  ],
                  [
                    MainTextData(text: 'MLM users'),
                    MainSubTextData(
                      mainText: '6132',
                      subText: '(7.2%)',
                      direction: Direction.horizontal,
                    ),
                    MainSubTextData(
                      mainText: '6132',
                      subText: '(7.2%)',
                      direction: Direction.horizontal,
                    ),
                    MainSubTextData(
                      mainText: '6132',
                      subText: '(7.2%)',
                      direction: Direction.horizontal,
                    ),
                    MainSubTextData(
                      mainText: '6132',
                      subText: '(7.2%)',
                      direction: Direction.horizontal,
                    ),
                  ],
                  [
                    MainTextData(text: 'Sales agents'),
                    MainSubTextData(
                      mainText: '6132',
                      subText: '(7.2%)',
                      direction: Direction.horizontal,
                    ),
                    MainSubTextData(
                      mainText: '6132',
                      subText: '(7.2%)',
                      direction: Direction.horizontal,
                    ),
                    MainSubTextData(
                      mainText: '6132',
                      subText: '(7.2%)',
                      direction: Direction.horizontal,
                    ),
                    MainSubTextData(
                      mainText: '6132',
                      subText: '(7.2%)',
                      direction: Direction.horizontal,
                    ),
                  ],
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
