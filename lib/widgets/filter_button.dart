import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';

import 'package:divyam_excel_admin/widgets/body_text.dart';
import 'package:divyam_excel_admin/constants/colors.dart';

class FilterButton extends StatefulWidget {
  const FilterButton({
    super.key,
    this.label,
    required this.options,
    required this.width,
  });

  FilterButton.period({super.key})
      : label = null,
        options = [
          {'key': '1day', 'value': '1 day'},
          {'key': '3days', 'value': '3 days'},
          {'key': '1week', 'value': '1 week'},
          {'key': '2weeks', 'value': '2 weeks'},
          {'key': '1month', 'value': '1 month'},
          {'key': '3months', 'value': '3 months'},
          {'key': '6months', 'value': '6 months'},
        ],
        width = 140;

  FilterButton.rowsCount({super.key})
      : label = null,
        options = [
          {'key': '10', 'value': '10'},
          {'key': '20', 'value': '20'},
        ],
        width = 80;

  // const FilterButton.location({super.key})
  //     : text = 'Maharashtra / Buldhana / Khamgaon',
  //       width = 460;

  // const FilterButton.type({super.key})
  //     : text = 'All',
  //       width = 140;

  // const FilterButton.status({super.key})
  //     : text = 'Status',
  //       width = 140;

  final String? label;
  final List<Map<String, String>> options;
  final double width;

  @override
  State<FilterButton> createState() => _FilterButtonState();
}

class _FilterButtonState extends State<FilterButton> {
  final layerLink = LayerLink();
  OverlayEntry? entry;
  String? selectedText;
  bool isOverlayOpen = false;

  @override
  void initState() {
    super.initState();
    selectedText = widget.label ?? widget.options.first['value'] as String;
  }

  void _showOverlay() {
    final overlay = Overlay.of(context);
    final renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;

    entry = OverlayEntry(
      builder: (context) => Stack(
        children: [
          Positioned.fill(
            child: GestureDetector(
              onTap: _hideOverlay,
            ),
          ),
          Positioned(
            width: size.width,
            child: CompositedTransformFollower(
              link: layerLink,
              showWhenUnlinked: false,
              offset: Offset(0, size.height),
              child: buildOverlay(),
            ),
          ),
        ],
      ),
    );

    overlay.insert(entry!);
  }

  void _hideOverlay() {
    setState(() {
      isOverlayOpen = false;
    });

    entry?.remove();
    entry = null;
  }

  Widget buildOverlay() {
    return Material(
      borderRadius: BorderRadius.circular(5),
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: SeparatedColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          separatorBuilder: () => const SizedBox(height: 3),
          children: widget.options.map((option) {
            return InkWell(
              onTap: () {
                setState(() {
                  selectedText = option['value'];
                  isOverlayOpen = false;
                });

                _hideOverlay();
              },
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 15,
                    ),
                    child: BodyText(
                        text: option['value'] as String,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: layerLink,
      child: InkWell(
        onTap: () {
          setState(() {
            if (isOverlayOpen) {
              _hideOverlay();
            } else {
              _showOverlay();
            }

            isOverlayOpen = !isOverlayOpen;
          });
        },
        child: Container(
          width: widget.width,
          height: 40,
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: kBorderColor,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BodyText(
                text: selectedText ?? '',
                fontWeight: FontWeight.w500,
              ),
              const Icon(
                Icons.expand_more_outlined,
                color: kBorderColor,
                size: 22,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
