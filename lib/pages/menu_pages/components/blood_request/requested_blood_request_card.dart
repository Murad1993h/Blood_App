import 'package:blood_apps/helpers/app_spaces.dart';
import 'package:blood_apps/pages/profile/controllers/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';
import 'package:provider/provider.dart';

import '../../../../helpers/app_colors.dart';
import '../../../blood_request/models/MyRequestListModel.dart';

class RequestedBloodRequestCard extends StatefulWidget {
  final RequestList? requestList;
  final VoidCallback? onTap;

  const RequestedBloodRequestCard({
    Key? key,
    this.requestList,
    this.onTap,
  }) : super(key: key);

  @override
  State<RequestedBloodRequestCard> createState() => _RequestedBloodRequestCardState();
}

class _RequestedBloodRequestCardState extends State<RequestedBloodRequestCard> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProfileController>(builder: (context, data, child) {
      return Stack(
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
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
                      widget.requestList!.bloodGroup.toString(),
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
                    Text(
                      widget.requestList!.patientName.toString(),
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
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
                                Jiffy(widget.requestList!.date.toString()).format('MMM dd, yyyy'),
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
                                "${widget.requestList!.bloodQuantity}(Bag)",
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
                                "${widget.requestList!.patientProblem}",
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
                                (element) => element.id.toString() == widget.requestList!.hospitalName.toString(),
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
                    InkWell(
                      onTap: widget.requestList!.requestResponse!.isNotEmpty ? widget.onTap! : null,
                      child: Container(
                        decoration: BoxDecoration(
                          color: widget.requestList!.requestResponse!.isNotEmpty ? AppColors.primaryColor : AppColors.primaryColor.withOpacity(0.5),
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
                                'Request Accepted (${widget.requestList!.requestResponse!.length})',
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
              ],
            ),
          ),
          Positioned(
            top: 5,
            right: 5,
            child: Container(
              decoration: BoxDecoration(
                color: widget.requestList!.status.toString() == '0' ? AppColors.lime : AppColors.darkGreen,
                border: Border(
                  right: BorderSide(
                    color: AppColors.black12,
                  ),
                  top: BorderSide(
                    color: AppColors.black12,
                  ),
                ),
                // borderRadius: BorderRadius.circular(5.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  widget.requestList!.status == 0 ? 'Unpublished' : 'Published',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: widget.requestList!.status.toString() == '0' ? AppColors.black : AppColors.white),
                  textAlign: TextAlign.end,
                ),
              ),
            ),
          )
        ],
      );
    });
  }
}
