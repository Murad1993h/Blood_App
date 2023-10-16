import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../app_spaces.dart';

class LoadingDialogue extends StatelessWidget {
  final String? image;
  final String? title;

  const LoadingDialogue({super.key, this.image, this.title});

  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 0.0,
        backgroundColor: AppColors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                image.toString(),
                height: 50,
                fit: BoxFit.fill,
                color: AppColors.primaryColor,
              ),
              AppSpaces.spaces_width_10,
              Text(
                title.toString(),
                style: TextStyle(color: AppColors.primaryColor),
              ),
            ],
          ),
        ));
  }
}
