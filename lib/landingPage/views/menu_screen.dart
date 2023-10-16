import 'package:blood_apps/helpers/app_spaces.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../helpers/app_colors.dart';
import '../../main.dart';
import '../../route/route.dart';

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
                  // InkWell(
                  //   onTap: () {
                  //     Get.to(() => MapLoc());
                  //   },
                  //   child: Container(
                  //     alignment: Alignment.center,
                  //     width: Get.width,
                  //     decoration: BoxDecoration(
                  //       color: AppColors.primaryColor,
                  //       borderRadius: BorderRadius.circular(5.0),
                  //       border: Border.all(color: AppColors.primaryColor),
                  //     ),
                  //     child: Padding(
                  //       padding: const EdgeInsets.all(8.0),
                  //       child: Row(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: [
                  //           Container(
                  //             decoration: BoxDecoration(
                  //               color: AppColors.white,
                  //               borderRadius: BorderRadius.circular(5.0),
                  //             ),
                  //             child: Padding(
                  //               padding: const EdgeInsets.all(3.0),
                  //               child: Image.asset(
                  //                 'assets/icon/app_icons/digital-wallet.png',
                  //                 height: 20,
                  //                 width: 20,
                  //               ),
                  //             ),
                  //           ),
                  //           AppSpaces.spaces_width_10,
                  //           Text(
                  //             'WALLET'.tr,
                  //             style: TextStyle(
                  //               fontSize: 16,
                  //               color: AppColors.white,
                  //               fontWeight: FontWeight.w500,
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // AppSpaces.spaces_height_10,
                  // Divider(
                  //   thickness: 1.0,
                  //   color: AppColors.primaryColor,
                  // ),
                  // AppSpaces.spaces_height_10,
                  InkWell(
                    onTap: () {
                      Get.toNamed(hospitalList);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(color: AppColors.primaryColor),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Image.asset(
                                  'assets/icon/app_icons/hospital-building.png',
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                            ),
                            AppSpaces.spaces_width_10,
                            Text(
                              'Hospital'.tr,
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  AppSpaces.spaces_height_10,
                  InkWell(
                    onTap: () {
                      Get.toNamed(myRequestList);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(color: AppColors.primaryColor),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Image.asset(
                                  'assets/images/list.png',
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                            ),
                            AppSpaces.spaces_width_10,
                            Text(
                              'Request list'.tr,
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  AppSpaces.spaces_height_10,
                  InkWell(
                    onTap: () {
                      Get.toNamed(universityList);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(color: AppColors.primaryColor),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Image.asset(
                                  'assets/images/school.png',
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                            ),
                            AppSpaces.spaces_width_10,
                            Text(
                              'University List'.tr,
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
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
                    border: Border.all(color: AppColors.primaryColor),
                  ),
                  child: prefs!.getBool('guestLogIn') == true
                      ? Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Log In'.tr,
                            style: TextStyle(color: AppColors.primaryColor),
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
