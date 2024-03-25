import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:divyam_excel_admin/routing/routes.dart';

class SidemenuController extends GetxController {
  static SidemenuController sidemenuInstance = Get.find();
  var activeItem = dashboardPageRoute.obs;
  var hoverItem = ''.obs;

  changeActiveItem(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) {
    return activeItem.value == itemName;
  }

  isHovering(String itemName) {
    return hoverItem.value == itemName;
  }

  Widget returnIconFor(String itemName) {
    const double iconSize = 20;

    switch (itemName) {
      case dashboardPageRoute:
        return _customIcon(
          activeIcon: const Icon(
            Icons.dashboard,
            size: iconSize,
            color: Colors.white,
          ),
          inactiveIcon: const Icon(
            Icons.dashboard,
            size: iconSize,
            color: Colors.white70,
          ),
          itemName: itemName,
        );
      case reportsPageRoute:
        return _customIcon(
          activeIcon: const Icon(
            Icons.report,
            size: iconSize,
            color: Colors.white,
          ),
          inactiveIcon: const Icon(
            Icons.report,
            size: iconSize,
            color: Colors.white70,
          ),
          itemName: itemName,
        );
      default:
        return _customIcon(
          activeIcon: const Icon(
            Icons.circle,
            size: iconSize,
            color: Colors.white,
          ),
          inactiveIcon: const Icon(
            Icons.circle,
            size: iconSize,
            color: Colors.white70,
          ),
          itemName: itemName,
        );
    }
  }

  Widget _customIcon({
    required Widget activeIcon,
    required Widget inactiveIcon,
    required String itemName,
  }) {
    if (isActive(itemName)) {
      return activeIcon;
    }

    return inactiveIcon;
  }
}
