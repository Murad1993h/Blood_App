import 'package:blood_apps/helpers/app_spaces.dart';
import 'package:blood_apps/pages/blood_request/controller/blood_requeat_controller.dart';
import 'package:blood_apps/pages/profile/controllers/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';
import 'package:provider/provider.dart';

import '../../../../helpers/app_colors.dart';
import '../../../blood_request/models/MyResponseModel.dart';

class AppliedBloodRequestCard extends StatefulWidget {
  final MyResponseData? myResponseData;
  final VoidCallback? onTap;

  const AppliedBloodRequestCard({
    Key? key,
    this.myResponseData,
    this.onTap,
  }) : super(key: key);

  @override
  State<AppliedBloodRequestCard> createState() => _AppliedBloodRequestCardState();
}

class _AppliedBloodRequestCardState extends State<AppliedBloodRequestCard> {
  BloodRequestController? bloodRequestController;

  @override
  void initState() {
    // TODO: implement initState
    bloodRequestController = Provider.of<BloodRequestController>(context, listen: false);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ProfileController>(builder: (context, data, child) {
      return Container(
        margin: const EdgeInsets.all(5.0),
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: AppColors.white,
          border: Border.all(color: AppColors.black12),
          borderRadius: BorderRadius.circular(5.0),
        ),
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
                  widget.myResponseData!.giver!.bloodGroup.toString(),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppSpaces.spaces_height_5,
                Column(
                  children: [
                    Text(
                      widget.myResponseData!.giver!.patientName.toString(),
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                AppSpaces.spaces_height_5,
                Container(
                  width: Get.width * .8,
                  child: Row(
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
                            Jiffy(widget.myResponseData!.giver!.date.toString()).format('MMM dd, yyyy'),
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      AppSpaces.spaces_width_15,
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
                            "${widget.myResponseData!.giver!.bloodQuantity}(Bag)",
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      AppSpaces.spaces_width_15,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Patient Problem",
                            style: TextStyle(
                              color: AppColors.black45,
                              fontSize: 10,
                            ),
                          ),
                          AppSpaces.spaces_height_5,
                          Text(
                            "${widget.myResponseData!.giver!.patientProblem}",
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
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
                    Text(
                      data.hospitalModel!.data!
                          .firstWhere(
                            (element) => element.id.toString() == widget.myResponseData!.giver!.hospitalName.toString(),
                          )
                          .name
                          .toString(),
                      style: const TextStyle(
                        fontSize: 14,
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 2,
                    ),
                  ],
                ),
                AppSpaces.spaces_height_15,
                widget.myResponseData!.status == 1
                    ? Container(
                        decoration: BoxDecoration(
                          color: AppColors.darkGreen,
                          borderRadius: BorderRadius.circular(5.0),
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
                                'Accepted',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    : Container(
                        decoration: BoxDecoration(
                          color: AppColors.yellow,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.info,
                                size: 15,
                                color: AppColors.textColor,
                              ),
                              AppSpaces.spaces_width_5,
                              Text(
                                'Waiting for Conformation',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.textColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
