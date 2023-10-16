import 'package:blood_apps/helpers/app_colors.dart';
import 'package:blood_apps/helpers/app_spaces.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../helpers/urls.dart';
import '../../../profile/models/UniversityModel.dart';

class UniversityCard extends StatefulWidget {
  final String? name;
  final UniversityData? universityData;
  final String? districtId;

  const UniversityCard({
    Key? key,
    this.name,
    this.districtId,
    this.universityData,
  }) : super(key: key);

  @override
  State<UniversityCard> createState() => _UniversityCardState();
}

class _UniversityCardState extends State<UniversityCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(
          color: AppColors.black12,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 75,
            width: 75,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Image.network(
              '${image_url}university/${widget.universityData!.image}',
              fit: BoxFit.cover,
            ),
          ),
          AppSpaces.spaces_width_10,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  widget.universityData!.name.toString(),
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.textColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                AppSpaces.spaces_height_10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.textColor,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Image.asset(
                          'assets/icon/app_icons/telephone.png',
                          height: 15,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                    AppSpaces.spaces_width_5,
                    Text(
                      widget.universityData!.mobile.toString(),
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.textColor,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                AppSpaces.spaces_height_5,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.blue,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Image.asset(
                          'assets/icon/app_icons/email.png',
                          height: 15,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                    AppSpaces.spaces_width_5,
                    Text(
                      widget.universityData!.email.toString(),
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.textColor,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                AppSpaces.spaces_height_5,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.darkGreen,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Image.asset(
                          'assets/icon/app_icons/web.png',
                          height: 15,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                    AppSpaces.spaces_width_5,
                    Text(
                      widget.universityData!.websiteUrl.toString(),
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.textColor,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                AppSpaces.spaces_height_5,
                Container(
                  width: Get.width * .65,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Image.asset(
                            'assets/icon/app_icons/placeholder.png',
                            height: 15,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                      AppSpaces.spaces_width_5,
                      Expanded(
                        child: Text(
                          widget.universityData!.address.toString(),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.textColor,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
