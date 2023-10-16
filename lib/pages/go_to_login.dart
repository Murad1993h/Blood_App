import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../helpers/app_colors.dart';
import '../helpers/app_spaces.dart';
import '../route/route.dart';

class GoToLogIn extends StatelessWidget {
  const GoToLogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/log-in.png',
                  height: 150,
                  width: 150,
                ),
                AppSpaces.spaces_height_10,
                Text(
                  'You Need to LogIn First',
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Get.toNamed(login);
              },
              child: Container(
                alignment: Alignment.center,
                width: Get.width,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'log_in'.tr,
                    style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
