import 'package:divyam_excel_admin/models/checkbox_column_data.dart';
import 'package:divyam_excel_admin/models/column_name_icon_data.dart';
import 'package:divyam_excel_admin/models/main_sub_column_name_data.dart';
import 'package:divyam_excel_admin/models/main_text_tag_data.dart';
import 'package:divyam_excel_admin/models/row_checkbox_data.dart';
import 'package:divyam_excel_admin/models/row_tag_data.dart';
import 'package:divyam_excel_admin/widgets/action_icon.dart';
import 'package:divyam_excel_admin/widgets/checkbox_column.dart';
import 'package:divyam_excel_admin/widgets/column_name_icon.dart';
import 'package:divyam_excel_admin/widgets/main_text_tag.dart';
import 'package:divyam_excel_admin/widgets/row_checkbox.dart';
import 'package:divyam_excel_admin/widgets/row_tag.dart';
import 'package:flutter/material.dart';

import 'package:divyam_excel_admin/widgets/main_sub_column_name.dart';
import 'package:divyam_excel_admin/constants/colors.dart';
import 'package:divyam_excel_admin/models/main_sub_text_data.dart';
import 'package:divyam_excel_admin/models/main_text_data.dart';
import 'package:divyam_excel_admin/widgets/main_text.dart';
import 'package:divyam_excel_admin/models/data_alignment.dart';
import 'package:divyam_excel_admin/widgets/body_text.dart';
import 'package:divyam_excel_admin/widgets/main_sub_text.dart';

class CustomTable extends StatelessWidget {
  const CustomTable({
    super.key,
    required this.columns,
    required this.rowsData,
    this.columnWidths,
  });

  final List<Map<Object, Object>> columns;
  final List<List<dynamic>> rowsData;
  final Map<int, TableColumnWidth>? columnWidths;

  @override
  Widget build(BuildContext context) {
    double columnsGap = 14;

    Map<int, DataAlignment> alignment = {};

    Widget buildColumnNameWidget(data) {
      if (data.value['label'] is String) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: BodyText(
            text: (data.value['label'] as String).toUpperCase(),
            fontSize: 13,
            fontWeight: FontWeight.w500,
            textAlign: data.value['alignment'] == DataAlignment.right
                ? TextAlign.right
                : TextAlign.left,
          ),
        );
      } else if (data.value['label'] is MainSubColumnNameData) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: MainSubColumnName(
            data: data.value['label'],
            alignment: data.value['alignment'] == DataAlignment.right
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
          ),
        );
      } else if (data.value['label'] is ColumnNameIconData) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: ColumnNameIcon(
            data: data.value['label'],
            alignment: data.value['alignment'] == DataAlignment.right
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
          ),
        );
      } else if (data.value['label'] is CheckboxColumnData) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 7),
          child: CheckboxColumn(data: data.value['label']),
        );
      } else {
        return const SizedBox.shrink();
      }
    }

    Widget buildCellWidget(data) {
      if (data.value is MainTextData) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: MainText(
            data: data.value,
            alignment: alignment[data.key]!,
          ),
        );
      } else if (data.value is MainSubTextData) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 7),
          child: MainSubText(
            data: data.value,
            alignment: alignment[data.key]!,
          ),
        );
      } else if (data.value is ActionIcon) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: ActionIcon(),
        );
      } else if (data.value is RowTagData) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: RowTag(data: data.value),
        );
      } else if (data.value is RowCheckboxData) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 7),
          child: RowCheckbox(data: data.value),
        );
      } else if (data.value is MainTextTagData) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 7),
          child: MainTextTag(
            data: data.value,
            alignment: alignment[data.key]!,
          ),
        );
      } else {
        return const SizedBox.shrink();
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Table(
        border: const TableBorder(
          horizontalInside: BorderSide(
            width: 1,
            color: kBorderColor,
          ),
        ),
        columnWidths: columnWidths,
        children: [
          TableRow(
            children: columns.asMap().entries.map((entry) {
              alignment[entry.key] = entry.value['alignment'] as DataAlignment;

              int index = entry.key;
              int totalLength = columns.length;

              bool isFirst = index == 0;
              bool isLast = index == totalLength - 1;
              bool isInBetween = !isFirst && !isLast;

              EdgeInsetsGeometry? horizontalPadding;

              if (isFirst) {
                horizontalPadding = EdgeInsets.only(right: columnsGap / 2);
              } else if (isLast) {
                horizontalPadding = EdgeInsets.only(left: columnsGap / 2);
              } else if (isInBetween) {
                horizontalPadding =
                    EdgeInsets.symmetric(horizontal: columnsGap / 2);
              }

              return Padding(
                padding: horizontalPadding!,
                child: buildColumnNameWidget(entry),
              );
            }).toList(),
          ),
          ...rowsData.map<TableRow>((row) {
            return TableRow(
              children: row.asMap().entries.map<TableCell>((entry) {
                int index = entry.key;
                int totalLength = row.length;

                bool isFirst = index == 0;
                bool isLast = index == totalLength - 1;
                bool isInBetween = !isFirst && !isLast;

                EdgeInsetsGeometry? horizontalPadding;

                if (isFirst) {
                  horizontalPadding = EdgeInsets.only(right: columnsGap / 2);
                } else if (isLast) {
                  horizontalPadding = EdgeInsets.only(left: columnsGap / 2);
                } else if (isInBetween) {
                  horizontalPadding =
                      EdgeInsets.symmetric(horizontal: columnsGap / 2);
                }

                return TableCell(
                  child: Padding(
                    padding: horizontalPadding!,
                    child: buildCellWidget(entry),
                  ),
                );
              }).toList(),
            );
          }).toList(),
        ],
      ),
    );
  }
}
