import 'package:divyam_excel_admin/constants/controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SidemenuItem extends StatelessWidget {
  const SidemenuItem({
    super.key,
    required this.itemName,
    required this.onTap,
  });

  final String itemName;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? sidemenuController.onHover(itemName)
            : sidemenuController.onHover('not hovering');
      },
      child: Obx(
        () => Container(
          color: sidemenuController.isHovering(itemName)
              ? Colors.white10
              : Colors.transparent,
          child: Row(
            children: [
              const Padding(padding: EdgeInsets.all(10)),
              sidemenuController.returnIconFor(itemName),
              const SizedBox(width: 7),
              if (!sidemenuController.isActive(itemName))
                Flexible(
                  child: Text(
                    itemName,
                    style: TextStyle(
                      color: sidemenuController.isHovering(itemName)
                          ? Colors.white
                          : Colors.white70,
                    ),
                  ),
                )
              else
                Flexible(
                  child: Text(
                    itemName,
                    style: const TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
