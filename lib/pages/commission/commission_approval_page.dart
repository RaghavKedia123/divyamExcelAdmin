import 'package:divyam_excel_admin/models/column_name_icon_data.dart';
import 'package:divyam_excel_admin/models/pagination_button_status.dart';
import 'package:divyam_excel_admin/widgets/body_text.dart';
import 'package:divyam_excel_admin/widgets/export_to_excel.dart';
import 'package:divyam_excel_admin/widgets/overlay_form.dart';
import 'package:divyam_excel_admin/widgets/pagination/pagination_number_button.dart';
import 'package:divyam_excel_admin/widgets/pagination/pagination_text_button.dart';
import 'package:divyam_excel_admin/widgets/primary_button.dart';
import 'package:divyam_excel_admin/widgets/showing_entries_count.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import 'package:divyam_excel_admin/widgets/table_bottom_row.dart';
import 'package:divyam_excel_admin/widgets/section_title.dart';
import 'package:divyam_excel_admin/widgets/shadowed_box.dart';
import 'package:divyam_excel_admin/widgets/filter_button.dart';
import 'package:divyam_excel_admin/constants/colors.dart';
import 'package:divyam_excel_admin/models/data_alignment.dart';
import 'package:divyam_excel_admin/models/main_text_data.dart';
import 'package:divyam_excel_admin/widgets/custom_table.dart';

class CommissionApprovalPage extends StatelessWidget {
  const CommissionApprovalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShadowedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionTitle(text: 'Commission Approval'),
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
                columnWidths: const {0: FixedColumnWidth(250)},
                columns: const [
                  {
                    'label': 'Commission Week',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'Cash Sales',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Diamond Sales',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Commission',
                    'alignment': DataAlignment.right,
                  },
                ],
                rowsData: [
                  [
                    MainTextData(text: '88-88-8888 to 88-88-8888'),
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    PrimaryButton(
                      label: 'Approve Commission',
                      onTap: () => showOverlay(
                        context: context,
                        child: const Column(
                          children: [
                            BodyText(
                              text: 'Approve Commission',
                              fontSize: 26,
                            ),
                          ],
                        ),
                      ),
                    ),
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
              const SectionTitle(text: 'Commissions History'),
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
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
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
                  1: FixedColumnWidth(220),
                  4: FixedColumnWidth(200),
                  5: FixedColumnWidth(230),
                },
                columns: [
                  const {
                    'label': '#',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': ColumnNameIconData(
                      label: 'Commission Week',
                      iconData: UniconsLine.sort_amount_down,
                    ),
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': ColumnNameIconData(
                      label: 'Sales Amount',
                      iconData: UniconsLine.sort_amount_down,
                    ),
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': ColumnNameIconData(
                      label: 'Commission',
                      iconData: UniconsLine.sort_amount_down,
                    ),
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': ColumnNameIconData(
                      label: 'Approval Time',
                      iconData: UniconsLine.sort_amount_down,
                    ),
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': ColumnNameIconData(
                      label: 'Approved By',
                      iconData: UniconsLine.sort_amount_down,
                    ),
                    'alignment': DataAlignment.right,
                  },
                ],
                rowsData: [
                  [
                    MainTextData(text: '101'),
                    MainTextData(text: '88-88-8888 to 88-88-8888'),
                    MainTextData(text: '₹ 99,99,999.00'),
                    MainTextData(text: '₹ 99,99,999.00'),
                    MainTextData(text: '88-88-8888 88:88 AM'),
                    MainTextData(
                        text: 'shashwat_dharangaonkar',
                        textColor: kPrimaryColor),
                  ],
                  [
                    MainTextData(text: '101'),
                    MainTextData(text: '88-88-8888 to 88-88-8888'),
                    MainTextData(text: '₹ 99,99,999.00'),
                    MainTextData(text: '₹ 99,99,999.00'),
                    MainTextData(text: '88-88-8888 88:88 AM'),
                    MainTextData(
                        text: 'shashwat_dharangaonkar',
                        textColor: kPrimaryColor),
                  ],
                  [
                    MainTextData(text: '101'),
                    MainTextData(text: '88-88-8888 to 88-88-8888'),
                    MainTextData(text: '₹ 99,99,999.00'),
                    MainTextData(text: '₹ 99,99,999.00'),
                    MainTextData(text: '88-88-8888 88:88 AM'),
                    MainTextData(
                        text: 'shashwat_dharangaonkar',
                        textColor: kPrimaryColor),
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