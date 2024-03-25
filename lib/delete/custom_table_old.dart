import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';

import 'package:divyam_excel_admin/widgets/body_text.dart';

class CustomTableOld extends StatelessWidget {
  const CustomTableOld({
    super.key,
    required this.columns,
    required this.rowsData,
    required this.dataRowHeight,
    this.firstColumnFixedWidth,
  });

  final List<Map<String, Object>> columns;
  final List<List<Widget>> rowsData;
  final double dataRowHeight;
  final double? firstColumnFixedWidth;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DataTable2(
        horizontalMargin: 30,
        dataRowHeight: dataRowHeight,
        showBottomBorder: true,
        columns: columns.asMap().entries.map<DataColumn>((entry) {
          return DataColumn2(
            label: BodyText(
              text: entry.value['label'] as String,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
            numeric: entry.value['numeric'] as bool,
            fixedWidth: entry.key == 0 ? firstColumnFixedWidth : null,
          );
        }).toList(),
        rows: rowsData.map<DataRow>((row) {
          return DataRow(
            cells: row.map<DataCell>((cell) {
              return DataCell(cell);
            }).toList(),
          );
        }).toList(),
      ),
    );
  }
}
