import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';

import 'package:divyam_excel_admin/models/checkbox_column_data.dart';
import 'package:divyam_excel_admin/models/row_checkbox_data.dart';
import 'package:divyam_excel_admin/widgets/primary_button.dart';
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

class PendingUsersWithdrawalsPage extends StatelessWidget {
  const PendingUsersWithdrawalsPage({super.key});

  final bool trueBool = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShadowedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionTitle(text: 'Pending Users Withdrawals'),
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
                    // FilterButton.rowsCount(),
                  ],
                ),
              ),
              const Divider(
                height: 1,
                color: kBorderColor,
              ),
              CustomTable(
                columnWidths: const {
                  0: FixedColumnWidth(60),
                  1: FixedColumnWidth(70),
                },
                columns: [
                  {
                    'label': CheckboxColumnData(
                      value: false,
                      onChanged: (trueBool) {},
                    ),
                    'alignment': DataAlignment.left,
                  },
                  const {
                    'label': '#',
                    'alignment': DataAlignment.left,
                  },
                  const {
                    'label': 'Name',
                    'alignment': DataAlignment.left,
                  },
                  const {
                    'label': 'Amount',
                    'alignment': DataAlignment.right,
                  },
                  const {
                    'label': 'Date & Time',
                    'alignment': DataAlignment.left,
                  },
                ],
                rowsData: [
                  [
                    RowCheckboxData(value: false, onChanged: (trueBool) {}),
                    MainTextData(text: '101'),
                    MainTextData(
                      text: 'Shashwat Dharangaonkar',
                      textColor: kPrimaryColor,
                    ),
                    MainTextData(text: '₹ 9999999.00'),
                    MainTextData(text: '88-88-8888 88:88 PM'),
                  ],
                ],
              ),
              const Divider(
                height: 1,
                color: kBorderColor,
              ),
              TableBottomRow(
                child: Column(
                  children: [
                    Row(
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
                    const SizedBox(height: 20),
                    const Row(
                      children: [
                        // FilterButton(text: 'Select action', width: 170),
                        SizedBox(width: 20),
                        PrimaryButton(label: 'Apply'),
                      ],
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
