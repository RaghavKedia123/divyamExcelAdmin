import 'package:divyam_excel_admin/constants/colors.dart';
import 'package:flutter/material.dart';

OverlayEntry? entry;

void showOverlay({
  required BuildContext context,
  required Widget child,
}) {
  final overlay = Overlay.of(context);

  entry = OverlayEntry(
    builder: (context) => Material(
      color: kPrimaryColor.withOpacity(0.8),
      child: Stack(
        children: [
          Positioned.fill(
            child: GestureDetector(
              onTap: hideOverlay,
            ),
          ),
          buildOverlay(child),
        ],
      ),
    ),
  );

  overlay.insert(entry!);
}

void hideOverlay() {
  entry?.remove();
  entry = null;
}

Widget buildOverlay(child) {
  return Positioned(
    top: 40,
    left: 265,
    child: Container(
      width: 800,
      padding: const EdgeInsets.all(70),
      color: Colors.white,
      child: child,
    ),
  );
}
