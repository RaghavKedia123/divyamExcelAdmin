import 'package:flutter/material.dart';

class TableBottomRow extends StatelessWidget {
  const TableBottomRow({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 15,
      ),
      alignment: Alignment.center,
      child: child,
    );
  }
}
