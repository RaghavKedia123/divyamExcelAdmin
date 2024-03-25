import 'package:divyam_excel_admin/models/main_sub_text_data.dart';
import 'package:divyam_excel_admin/widgets/action_icon.dart';
import 'package:divyam_excel_admin/widgets/primary_button.dart';
import 'package:divyam_excel_admin/widgets/search_button.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';

import 'package:divyam_excel_admin/models/pagination_button_status.dart';
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

class AllOfferRatesPage extends StatelessWidget {
  const AllOfferRatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShadowedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionTitle(text: 'All Offer Rates'),
              const Divider(
                height: 1,
                color: kBorderColor,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SearchButton(hintText: 'Location name'),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // const FilterButton.rowsCount(),
                        SeparatedRow(
                          children: const [
                            // FilterButton.location(),
                            PrimaryButton(
                                label: 'Assign Rates to New Location'),
                          ],
                          separatorBuilder: () => const SizedBox(width: 20),
                        ),
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
                  2: FixedColumnWidth(100),
                  3: FixedColumnWidth(130),
                  4: FixedColumnWidth(130),
                  5: FixedColumnWidth(130),
                  6: FixedColumnWidth(130),
                  7: FixedColumnWidth(130),
                  8: FixedColumnWidth(60),
                },
                columns: const [
                  {
                    'label': '#',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'Location',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'Free',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Entry',
                    'alignment': DataAlignment.right,
                  },
                  {
                    'label': 'Exit',
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
                  {
                    'label': 'Action',
                    'alignment': DataAlignment.right,
                  },
                ],
                rowsData: [
                  [
                    MainTextData(text: '101'),
                    MainSubTextData(
                      mainText: 'Ahmednagar',
                      subText: 'Ahmednagar / Andhra Pradesh',
                      direction: Direction.vertical,
                    ),
                    MainTextData(text: '9999999'),
                    MainSubTextData(
                      mainText: '₹ 9999999.00',
                      subText: '999 M / 999 M',
                      direction: Direction.vertical,
                    ),
                    MainSubTextData(
                      mainText: '₹ 9999999.00',
                      subText: '999 M / 999 M',
                      direction: Direction.vertical,
                    ),
                    MainSubTextData(
                      mainText: '₹ 9999999.00',
                      subText: '999 M / 999 M',
                      direction: Direction.vertical,
                    ),
                    MainSubTextData(
                      mainText: '₹ 9999999.00',
                      subText: '999 M / 999 M',
                      direction: Direction.vertical,
                    ),
                    MainSubTextData(
                      mainText: '₹ 9999999.00',
                      subText: '999 M / 999 M',
                      direction: Direction.vertical,
                    ),
                    const ActionIcon(),
                  ],
                  [
                    MainTextData(text: '101'),
                    MainSubTextData(
                      mainText: 'Ahmednagar',
                      subText: 'Ahmednagar / Andhra Pradesh',
                      direction: Direction.vertical,
                    ),
                    MainTextData(text: '9999999'),
                    MainSubTextData(
                      mainText: '₹ 9999999.00',
                      subText: '999 M / 999 M',
                      direction: Direction.vertical,
                    ),
                    MainSubTextData(
                      mainText: '₹ 9999999.00',
                      subText: '999 M / 999 M',
                      direction: Direction.vertical,
                    ),
                    MainSubTextData(
                      mainText: '₹ 9999999.00',
                      subText: '999 M / 999 M',
                      direction: Direction.vertical,
                    ),
                    MainSubTextData(
                      mainText: '₹ 9999999.00',
                      subText: '999 M / 999 M',
                      direction: Direction.vertical,
                    ),
                    MainSubTextData(
                      mainText: '₹ 9999999.00',
                      subText: '999 M / 999 M',
                      direction: Direction.vertical,
                    ),
                    const ActionIcon(),
                  ],
                  [
                    MainTextData(text: '101'),
                    MainSubTextData(
                      mainText: 'Ahmednagar',
                      subText: 'Ahmednagar / Andhra Pradesh',
                      direction: Direction.vertical,
                    ),
                    MainTextData(text: '9999999'),
                    MainSubTextData(
                      mainText: '₹ 9999999.00',
                      subText: '999 M / 999 M',
                      direction: Direction.vertical,
                    ),
                    MainSubTextData(
                      mainText: '₹ 9999999.00',
                      subText: '999 M / 999 M',
                      direction: Direction.vertical,
                    ),
                    MainSubTextData(
                      mainText: '₹ 9999999.00',
                      subText: '999 M / 999 M',
                      direction: Direction.vertical,
                    ),
                    MainSubTextData(
                      mainText: '₹ 9999999.00',
                      subText: '999 M / 999 M',
                      direction: Direction.vertical,
                    ),
                    MainSubTextData(
                      mainText: '₹ 9999999.00',
                      subText: '999 M / 999 M',
                      direction: Direction.vertical,
                    ),
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
