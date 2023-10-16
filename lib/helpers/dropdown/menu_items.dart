import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app_colors.dart';
import 'dropdown_menu_item.dart';

abstract class OccupationItems {
  static List<MenuItem> firstItems = [
    MenuItem(text: 'Student'.tr),
    MenuItem(text: 'Service'.tr),
    MenuItem(text: 'Businessmen'.tr),
    MenuItem(text: 'Day Laborer'.tr),
    MenuItem(text: 'Unemployed'.tr),
  ];

  static Widget buildItem(MenuItem item) {
    return Text(
      item.text,
      style: TextStyle(
        color: AppColors.primaryColor,
      ),
    );
  }
}

abstract class BloodRequestItems {
  static List<MenuItem> firstItems = [home, share];

  static MenuItem home = MenuItem(text: 'On date'.tr);
  static MenuItem share = MenuItem(text: 'Advance'.tr);

  static Widget buildItem(MenuItem item) {
    return Text(
      item.text,
      style: TextStyle(
        color: AppColors.primaryColor,
      ),
    );
  }
}

abstract class PatientProblemItems {
  static List<MenuItem> firstItems = [
    const MenuItem(text: 'Trauma Patients'),
    const MenuItem(text: 'Surgery and Transplant Patients'),
    const MenuItem(text: 'Cancer Patients'),
    const MenuItem(text: 'Anemic Patients'),
    const MenuItem(text: 'Delivery'),
    const MenuItem(text: 'Patients with Blood Disorders'),
    const MenuItem(text: 'Patients Undergoing Bone Marrow Transplants'),
    const MenuItem(text: 'Burn Victims'),
    const MenuItem(text: 'Patients with Chronic Diseases'),
    const MenuItem(text: 'Patients Undergoing Heart Surgery'),
    const MenuItem(text: 'Patients with Inherited Blood Disorders'),
    const MenuItem(text: 'Patients Undergoing Therapeutic Plasma Exchange'),
    const MenuItem(text: 'Patients with Liver Diseases'),
    const MenuItem(text: 'Thalassemia Diseases'),
  ];

  static Widget buildItem(MenuItem item) {
    return Container(
      width: Get.width * .8,
      child: Text(
        item.text,
        style: TextStyle(
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}

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
