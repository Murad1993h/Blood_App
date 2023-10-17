import 'package:blood_apps/helpers/app_spaces.dart';
import 'package:blood_apps/pages/blood_request/controller/blood_requeat_controller.dart';
import 'package:blood_apps/pages/blood_request/models/MyResponseModel.dart';
import 'package:blood_apps/pages/profile/controllers/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';
import 'package:provider/provider.dart';

import '../../../../helpers/app_colors.dart';
import '../../../../main.dart';
import '../../models/RunningBloodRequestModel.dart';

class RequestCardHome extends StatefulWidget {
  final List<MyResponseData>? accepted;
  final int? index;
  final RunningRequestList? runningRequestList;
  final String? fromWhere;
  final VoidCallback? onTap;

  const RequestCardHome({
    Key? key,
    this.runningRequestList,
    this.fromWhere,
    this.onTap,
    this.accepted,
    this.index,
  }) : super(key: key);

  @override
  State<RequestCardHome> createState() => _RequestCardHomeState();
}

class _RequestCardHomeState extends State<RequestCardHome> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProfileController>(builder: (context, data, child) {
      return Consumer<BloodRequestController>(builder: (context, bloodData, child) {
        return Container(
          width: widget.fromWhere == 'home' ? Get.width * .8 : Get.width,
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
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      widget.runningRequestList!.bloodGroup.toString(),
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
              AppSpaces.spaces_width_10,
              Expanded(
                flex: 9,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppSpaces.spaces_height_5,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                '${widget.runningRequestList!.patientName}',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  Jiffy(widget.runningRequestList!.date.toString()).format('MMM dd, yyyy'),
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    AppSpaces.spaces_height_10,
                    Container(
                      width: widget.fromWhere == 'home' ? Get.width * .65 : Get.width * .8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
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
                                "${widget.runningRequestList!.bloodQuantity}(Bag)",
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
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
                                  "${widget.runningRequestList!.patientProblem}",
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    AppSpaces.spaces_height_10,
                    Container(
                      width: widget.fromWhere == 'home' ? Get.width * .55 : null,
                      child: Column(
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
                            data.hospitalModel != null
                                ? data.hospitalModel!.data!
                                    .firstWhere(
                                      (element) => element.id.toString() == widget.runningRequestList!.hospitalName.toString(),
                                    )
                                    .name
                                    .toString()
                                : widget.runningRequestList!.hospitalName.toString(),
                            style: const TextStyle(
                              fontSize: 14,
                              overflow: TextOverflow.ellipsis,
                            ),
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                    AppSpaces.spaces_height_15,
                    InkWell(
                      onTap: widget.accepted!.isNotEmpty && widget.accepted![0].requestId == widget.runningRequestList!.id.toString()
                          ? null
                          : widget.onTap!,
                      child: Container(
                        width: Get.width * .35,
                        decoration: BoxDecoration(
                          color: widget.accepted!.isNotEmpty && widget.accepted![0].requestId == widget.runningRequestList!.id.toString() ||
                                  prefs!.getBool('guestLogIn') == true
                              ? AppColors.primaryColor.withOpacity(0.3)
                              : AppColors.primaryColor,
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
                  ],
                ),
              ),
            ],
          ),
        );
      });
    });
  }
}
