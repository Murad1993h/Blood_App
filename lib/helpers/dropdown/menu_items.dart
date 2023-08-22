import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app_colors.dart';
import 'dropdown_menu_item.dart';

// abstract class LocationItems {
//   final List divisionData;
//
//   LocationItems({required this.divisionData});
//
//   // static List<MenuItem> firstItems = [home, share, settings];
//
//   static List<MenuItem> divisionItems = List.generate(
//     divisionData.length,
//     (index) => MenuItem(
//       text: divisionData[index].name.toString(),
//     ),
//   );
//
//   // static MenuItem home = MenuItem(text: 'Male'.tr);
//   // static MenuItem share = MenuItem(text: 'Female'.tr);
//   // static MenuItem settings = MenuItem(text: 'Transgender'.tr);
//
//   static Widget buildItem(MenuItem item) {
//     return Text(
//       item.text,
//       style: TextStyle(
//         color: AppColors.primaryColor,
//       ),
//     );
//   }
// }

abstract class GenderItems {
  static List<MenuItem> firstItems = [home, share, settings];

  static MenuItem home = MenuItem(text: 'Male'.tr);
  static MenuItem share = MenuItem(text: 'Female'.tr);
  static MenuItem settings = MenuItem(text: 'Transgender'.tr);

  static Widget buildItem(MenuItem item) {
    return Text(
      item.text,
      style: TextStyle(
        color: AppColors.primaryColor,
      ),
    );
  }
}

abstract class BloodGroupItems {
  static List<MenuItem> firstItems = [
    A,
    a,
    B,
    b,
    O,
    o,
    AB,
    ab,
  ];

  static MenuItem A = const MenuItem(text: 'A+');
  static MenuItem a = const MenuItem(text: 'A-');
  static MenuItem B = const MenuItem(text: 'B+');
  static MenuItem b = const MenuItem(text: 'B-');
  static MenuItem O = const MenuItem(text: 'O+');
  static MenuItem o = const MenuItem(text: 'O-');
  static MenuItem AB = const MenuItem(text: 'AB+');
  static MenuItem ab = const MenuItem(text: 'AB-');

  static Widget buildItem(MenuItem item) {
    return Text(
      item.text,
      style: TextStyle(
        color: AppColors.primaryColor,
      ),
    );
  }
}
