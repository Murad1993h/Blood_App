import 'package:blood_apps/helpers/app_colors.dart';
import 'package:blood_apps/helpers/app_spaces.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AchievementCard extends StatelessWidget {
  final String? title;
  final String? count;
  final String? imagePath;
  final VoidCallback? onTap;

  AchievementCard({
    required this.title,
    required this.count,
    required this.imagePath,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * .30,
      height: Get.width * .30,
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
        border: Border.all(color: AppColors.black12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 3,
            blurRadius: 3,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imagePath.toString(),
            fit: BoxFit.cover,
            height: 35,
            width: 35,
          ),
          AppSpaces.spaces_height_10,
          Text(
            count.toString(),
            style: TextStyle(fontSize: 14),
          ),
          AppSpaces.spaces_height_10,
          Text(
            title.toString(),
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
