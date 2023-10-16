import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../helpers/app_colors.dart';
import '../../../../helpers/app_spaces.dart';
import '../../models/RunningBloodRequestModel.dart';

class BloodRequestFunction {
  static void showRequestDialog(BuildContext context, RunningRequestList? runningRequestList) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        debugPrint('Request Details');
        return AlertDialog(
          title: const Text('Request Details'),
          content: Container(
            width: Get.width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      runningRequestList!.bloodGroup.toString(),
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                AppSpaces.spaces_width_10,
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppSpaces.spaces_height_5,
                    Column(
                      children: [
                        Text(
                          runningRequestList.patientName.toString(),
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    AppSpaces.spaces_height_5,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Date",
                              style: TextStyle(
                                color: AppColors.black45,
                                fontSize: 10,
                              ),
                            ),
                            AppSpaces.spaces_height_5,
                            Text(
                              runningRequestList.date.toString(),
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        AppSpaces.spaces_width_25,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Quantity",
                              style: TextStyle(
                                color: AppColors.black45,
                                fontSize: 10,
                              ),
                            ),
                            AppSpaces.spaces_height_5,
                            Text(
                              "${runningRequestList.bloodQuantity}(Bag)",
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    AppSpaces.spaces_height_10,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Location",
                          style: TextStyle(
                            color: AppColors.black45,
                            fontSize: 10,
                          ),
                        ),
                        AppSpaces.spaces_height_5,
                        const Text(
                          'Hospital Name',
                          style: TextStyle(
                            fontSize: 14,
                            overflow: TextOverflow.ellipsis,
                          ),
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: AppColors.primaryColor),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.check_circle,
                            size: 15,
                            color: AppColors.white,
                          ),
                          AppSpaces.spaces_width_5,
                          Text(
                            'Donate Request',
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                AppSpaces.spaces_width_10,
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: AppColors.primaryColor),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.cancel,
                            size: 15,
                            color: AppColors.primaryColor,
                          ),
                          AppSpaces.spaces_width_5,
                          Text(
                            'Cancel',
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
