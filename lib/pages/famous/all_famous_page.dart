import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';

import 'package:divyam_excel_admin/constants/colors.dart';
import 'package:divyam_excel_admin/models/data_alignment.dart';
import 'package:divyam_excel_admin/models/main_sub_text_data.dart' as mst;
import 'package:divyam_excel_admin/models/main_text_data.dart';
import 'package:divyam_excel_admin/models/pagination_button_status.dart';
import 'package:divyam_excel_admin/models/row_tag_data.dart';
import 'package:divyam_excel_admin/widgets/action_icon.dart';
import 'package:divyam_excel_admin/widgets/custom_table.dart';
import 'package:divyam_excel_admin/widgets/filter_button.dart';
import 'package:divyam_excel_admin/widgets/pagination/pagination_number_button.dart';
import 'package:divyam_excel_admin/widgets/pagination/pagination_text_button.dart';
import 'package:divyam_excel_admin/widgets/search_button.dart';
import 'package:divyam_excel_admin/widgets/section_title.dart';
import 'package:divyam_excel_admin/widgets/shadowed_box.dart';
import 'package:divyam_excel_admin/widgets/showing_entries_count.dart';
import 'package:divyam_excel_admin/widgets/table_bottom_row.dart';

class AllFamousPage extends StatelessWidget {
  const AllFamousPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShadowedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionTitle(text: 'All Famous'),
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
                    SearchButton(hintText: 'Famous title'),
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
                    SeparatedRow(children: const [
                      // FilterButton.type(),
                      // FilterButton.location(),
                    ], separatorBuilder: () => const SizedBox(width: 20)),
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
                  4: FixedColumnWidth(105),
                  5: FixedColumnWidth(60),
                },
                columns: const [
                  {
                    'label': '#',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'Title',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'User',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'Period / Location',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'Status',
                    'alignment': DataAlignment.left,
                  },
                  {
                    'label': 'Action',
                    'alignment': DataAlignment.left,
                  },
                ],
                rowsData: [
                  [
                    MainTextData(text: '101'),
                    mst.MainSubTextData(
                      mainText: 'Happy birthday Dr. Arvind Suradkar',
                      mainTextOverflow: TextOverflow.ellipsis,
                      subText: 'Lorem impsum as description of this event',
                      subTextOverflow: TextOverflow.ellipsis,
                      direction: mst.Direction.vertical,
                    ),
                    MainTextData(
                        text: 'Shashwat Dharangaonkar',
                        textColor: kPrimaryColor),
                    mst.MainSubTextData(
                      mainText: '88-88-8888 to 88-88-8888',
                      subText: 'Khamgaon / Buldhana / Maharashtra',
                      subTextOverflow: TextOverflow.ellipsis,
                      direction: mst.Direction.vertical,
                    ),
                    RowTagData(tagLabel: 'Live', tagColor: TagColor.green),
                    const ActionIcon(),
                  ],
                  [
                    MainTextData(text: '101'),
                    mst.MainSubTextData(
                      mainText: 'Happy birthday Dr. Arvind Suradkar',
                      mainTextOverflow: TextOverflow.ellipsis,
                      subText: 'Lorem impsum as description of this event',
                      subTextOverflow: TextOverflow.ellipsis,
                      direction: mst.Direction.vertical,
                    ),
                    MainTextData(
                        text: 'Shashwat Dharangaonkar',
                        textColor: kPrimaryColor),
                    mst.MainSubTextData(
                      mainText: '88-88-8888 to 88-88-8888',
                      subText: 'Khamgaon / Buldhana / Maharashtra',
                      subTextOverflow: TextOverflow.ellipsis,
                      direction: mst.Direction.vertical,
                    ),
                    RowTagData(tagLabel: 'Future', tagColor: TagColor.cyan),
                    const ActionIcon(),
                  ],
                  [
                    MainTextData(text: '101'),
                    mst.MainSubTextData(
                      mainText: 'Happy birthday Dr. Arvind Suradkar',
                      mainTextOverflow: TextOverflow.ellipsis,
                      subText: 'Lorem impsum as description of this event',
                      subTextOverflow: TextOverflow.ellipsis,
                      direction: mst.Direction.vertical,
                    ),
                    MainTextData(
                        text: 'Shashwat Dharangaonkar',
                        textColor: kPrimaryColor),
                    mst.MainSubTextData(
                      mainText: '88-88-8888 to 88-88-8888',
                      subText: 'Khamgaon / Buldhana / Maharashtra',
                      subTextOverflow: TextOverflow.ellipsis,
                      direction: mst.Direction.vertical,
                    ),
                    RowTagData(tagLabel: 'Pending', tagColor: TagColor.orange),
                    const ActionIcon(),
                  ],
                  [
                    MainTextData(text: '101'),
                    mst.MainSubTextData(
                      mainText: 'Happy birthday Dr. Arvind Suradkar',
                      mainTextOverflow: TextOverflow.ellipsis,
                      subText: 'Lorem impsum as description of this event',
                      subTextOverflow: TextOverflow.ellipsis,
                      direction: mst.Direction.vertical,
                    ),
                    MainTextData(
                        text: 'Shashwat Dharangaonkar',
                        textColor: kPrimaryColor),
                    mst.MainSubTextData(
                      mainText: '88-88-8888 to 88-88-8888',
                      subText: 'Khamgaon / Buldhana / Maharashtra',
                      subTextOverflow: TextOverflow.ellipsis,
                      direction: mst.Direction.vertical,
                    ),
                    RowTagData(tagLabel: 'Suspended', tagColor: TagColor.red),
                    const ActionIcon(),
                  ],
                  [
                    MainTextData(text: '101'),
                    mst.MainSubTextData(
                      mainText: 'Happy birthday Dr. Arvind Suradkar',
                      mainTextOverflow: TextOverflow.ellipsis,
                      subText: 'Lorem impsum as description of this event',
                      subTextOverflow: TextOverflow.ellipsis,
                      direction: mst.Direction.vertical,
                    ),
                    MainTextData(
                        text: 'Shashwat Dharangaonkar',
                        textColor: kPrimaryColor),
                    mst.MainSubTextData(
                      mainText: '88-88-8888 to 88-88-8888',
                      subText: 'Khamgaon / Buldhana / Maharashtra',
                      subTextOverflow: TextOverflow.ellipsis,
                      direction: mst.Direction.vertical,
                    ),
                    RowTagData(tagLabel: 'Expired', tagColor: TagColor.grey),
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
