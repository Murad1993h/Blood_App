import 'package:blood_apps/helpers/app_spaces.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../helpers/app_colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          ///Donation History
          Container(
            decoration: BoxDecoration(
              color: AppColors.primaryColor.withOpacity(.1),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/icon/app_icons/location-mark.png',
                    height: 30,
                    width: 30,
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        text: "Lifetime Donation".tr,
                        style: DefaultTextStyle.of(context).style,
                        children: const <TextSpan>[
                          TextSpan(
                            text: ' (5 Times)',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "VIEW HISTORY".tr,
                        style: TextStyle(color: AppColors.primaryColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: ListView(
                children: [
                  ///Welcome Text
                  Text(
                    "Hi, Mostafiz",
                    style: TextStyle(
                      color: AppColors.textColor,
                      fontSize: 20,
                    ),
                  ),
                  AppSpaces.spaces_height_15,

                  ///Search
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          width: Get.width,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      borderSide: BorderSide.none,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      borderSide: BorderSide.none,
                                    ),
                                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                                    // focusColor: AppColors.primaryColor,
                                    isDense: true,
                                    contentPadding: const EdgeInsets.all(8.0),
                                    label: Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.white,
                                      ),
                                      child: Text(
                                        'Search Here'.tr,
                                        style: const TextStyle(color: Colors.black54, fontSize: 12),
                                      ),
                                    ),
                                    alignLabelWithHint: true,
                                  ),
                                  // onChanged: rfqCreateProvider!.setDescription,
                                  // controller: description,
                                  maxLines: 1,
                                  textInputAction: TextInputAction.done,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      AppSpaces.spaces_width_15,
                      Image.asset(
                        'assets/icon/app_icons/blood-test.png',
                        height: 30,
                        width: 30,
                      ),
                    ],
                  ),
                  AppSpaces.spaces_height_15,

                  ///Map Location
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: AppColors.primaryColor),
                    ),
                    child: Image.asset('assets/profile/img_1.png'),
                  ),
                  AppSpaces.spaces_height_10,

                  ///Searched Donor Count
                  Row(
                    children: [
                      Image.asset(
                        'assets/icon/app_icons/location-mark.png',
                        height: 30,
                        width: 30,
                      ),
                      Text(
                        "10 Donor Around 12 KM",
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),

                  AppSpaces.spaces_height_20,

                  ///Wallet Button
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.primaryColor),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WALLET'.tr,
                            style: TextStyle(color: AppColors.primaryColor),
                          ),
                          AppSpaces.spaces_width_10,
                          Image.asset(
                            'assets/icon/app_icons/digital-wallet.png',
                            height: 30,
                            width: 30,
                            color: AppColors.primaryColor,
                          )
                          // Add some spacing between the icon and text
                        ],
                      ),
                    ),
                  ),
                  AppSpaces.spaces_height_20,

                  ///Wallet Button
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      border: Border.all(color: AppColors.white),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'CREATE REQUEST'.tr,
                            style: TextStyle(color: AppColors.white),
                          ),
                          AppSpaces.spaces_width_10,
                          Image.asset(
                            'assets/icon/app_icons/digital-wallet.png',
                            height: 30,
                            width: 30,
                            color: AppColors.white,
                          )
                          // Add some spacing between the icon and text
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
