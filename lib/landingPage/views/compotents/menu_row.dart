import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../helpers/app_colors.dart';
import '../../../helpers/app_spaces.dart';

class MenuRow extends StatelessWidget {
  final String? type;
  final String? image;
  final String? title;
  final bool? active;

  const MenuRow({
    super.key,
    this.image,
    this.title,
    this.type,
    this.active,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: Get.width,
      decoration: BoxDecoration(
        color: type == 'list'
            ? active == true
                ? AppColors.primaryColor
                : AppColors.primaryColor.withOpacity(.3)
            : active == true
                ? AppColors.darkGreen
                : AppColors.darkGreen.withOpacity(.3),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
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
                  image.toString(),
                  height: 20,
                  width: 20,
                ),
              ),
            ),
            AppSpaces.spaces_width_5,
            Expanded(
              child: Text(
                title.toString(),
                style: TextStyle(
                  fontSize: 14,
                  color: AppColors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
