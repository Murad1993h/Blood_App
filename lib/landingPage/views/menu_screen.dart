import 'package:blood_apps/helpers/app_spaces.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../helpers/app_colors.dart';
import '../../main.dart';
import '../../route/route.dart';
import 'compotents/menu_row.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ListView(
                shrinkWrap: true,
                children: [
                  Image.asset(
                    'assets/logo/sbdms_logo.png',
                    height: 75,
                    width: 75,
                  ),
                  Divider(
                    thickness: 1.0,
                    color: AppColors.primaryColor,
                  ),
                  AppSpaces.spaces_height_5,

                  ///Hospital
                  InkWell(
                    onTap: () {
                      Get.toNamed(hospitalList);
                    },
                    child: MenuRow(
                      image: 'assets/icon/app_icons/hospital-building.png',
                      title: 'Hospital List'.tr,
                      type: 'list',
                      active: true,
                    ),
                  ),
                  AppSpaces.spaces_height_5,

                  ///Universities
                  InkWell(
                    onTap: () {
                      Get.toNamed(universityList);
                    },
                    child: MenuRow(
                      image: 'assets/icon/app_icons/school.png',
                      title: 'University List'.tr,
                      type: 'list',
                      active: true,
                    ),
                  ),
                  AppSpaces.spaces_height_5,

                  ///Groups
                  InkWell(
                    onTap: () {},
                    child: MenuRow(
                      image: 'assets/icon/app_icons/donors.png',
                      title: 'Groups'.tr,
                      type: 'list',
                      active: false,
                    ),
                  ),
                  AppSpaces.spaces_height_5,

                  ///Events
                  InkWell(
                    onTap: () {},
                    child: MenuRow(
                      image: 'assets/icon/app_icons/people.png',
                      title: 'Events'.tr,
                      type: 'list',
                      active: false,
                    ),
                  ),
                  AppSpaces.spaces_height_5,

                  ///Blood Bank
                  InkWell(
                    onTap: () {},
                    child: MenuRow(
                      image: 'assets/icon/app_icons/blood-bank.png',
                      title: 'Blood Bank'.tr,
                      type: 'list',
                      active: false,
                    ),
                  ),
                  AppSpaces.spaces_height_5,

                  Divider(
                    thickness: 1.0,
                    color: AppColors.primaryColor,
                  ),
                  AppSpaces.spaces_height_5,

                  ///Requests
                  InkWell(
                    onTap: () {
                      Get.toNamed(myRequestList);
                    },
                    child: MenuRow(
                      image: 'assets/images/list.png',
                      title: 'Request list'.tr,
                      type: 'list',
                      active: true,
                    ),
                  ),
                  AppSpaces.spaces_height_5,

                  Divider(
                    thickness: 1.0,
                    color: AppColors.darkGreen,
                  ),

                  ///Terms and Condition
                  InkWell(
                    onTap: () {},
                    child: MenuRow(
                      image: 'assets/icon/app_icons/terms-and-conditions.png',
                      title: 'Terms and Condition'.tr,
                      type: 'info',
                      active: false,
                    ),
                  ),
                  AppSpaces.spaces_height_5,

                  ///Privacy Policy
                  InkWell(
                    onTap: () {},
                    child: MenuRow(
                      image: 'assets/icon/app_icons/privacy.png',
                      title: 'Privacy Policy'.tr,
                      type: 'info',
                      active: false,
                    ),
                  ),
                  AppSpaces.spaces_height_5,

                  ///Settings
                  InkWell(
                    onTap: () {},
                    child: MenuRow(
                      image: 'assets/icon/app_icons/setting.png',
                      title: 'Settings'.tr,
                      type: 'info',
                      active: false,
                    ),
                  ),
                  AppSpaces.spaces_height_5,

                  ///About Us
                  InkWell(
                    onTap: () {},
                    child: MenuRow(
                      image: 'assets/icon/app_icons/about_us.png',
                      title: 'About Us'.tr,
                      type: 'info',
                      active: false,
                    ),
                  ),
                  AppSpaces.spaces_height_5,

                  ///Contact Us
                  InkWell(
                    onTap: () {},
                    child: MenuRow(
                      image: 'assets/icon/app_icons/communicate.png',
                      title: 'Contact Us'.tr,
                      type: 'info',
                      active: false,
                    ),
                  ),
                  AppSpaces.spaces_height_5,

                  ///FAQs
                  InkWell(
                    onTap: () {},
                    child: MenuRow(
                      image: 'assets/icon/app_icons/question-and-answer.png',
                      title: 'FAQs'.tr,
                      type: 'info',
                      active: false,
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  prefs!.clear();
                  Get.toNamed(login);
                },
                child: Container(
                  alignment: Alignment.center,
                  width: Get.width,
                  decoration: BoxDecoration(
                    // color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(
                      color: prefs!.getBool('guestLogIn') == true ? AppColors.darkGreen : AppColors.primaryColor,
                    ),
                  ),
                  child: prefs!.getBool('guestLogIn') == true
                      ? Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Log In'.tr,
                            style: TextStyle(color: AppColors.darkGreen),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Log Out'.tr,
                            style: TextStyle(color: AppColors.primaryColor),
                          ),
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
