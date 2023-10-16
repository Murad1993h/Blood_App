import 'package:blood_apps/authentication/models/UserListModel.dart';
import 'package:blood_apps/helpers/app_colors.dart';
import 'package:blood_apps/helpers/app_spaces.dart';
import 'package:flutter/material.dart';

class AcceptedDonorCard extends StatefulWidget {
  final DonorDetails? donorDetails;
  final VoidCallback? acceptTap;
  final VoidCallback? cancelTap;

  const AcceptedDonorCard({
    Key? key,
    this.donorDetails,
    this.acceptTap,
    this.cancelTap,
  }) : super(key: key);

  @override
  State<AcceptedDonorCard> createState() => _AcceptedDonorCardState();
}

class _AcceptedDonorCardState extends State<AcceptedDonorCard> {
  @override
  Widget build(BuildContext context) {
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
          CircleAvatar(
            backgroundColor: AppColors.lime.withOpacity(0.3),
            child: Image.asset(
              'assets/profile/donor.png',
              height: 30,
              width: 30,
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
                    '${widget.donorDetails!.firstName} ${widget.donorDetails!.lastName}',
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
                        "Blood Group",
                        style: TextStyle(
                          color: AppColors.black45,
                          fontSize: 10,
                        ),
                      ),
                      AppSpaces.spaces_height_5,
                      Text(
                        widget.donorDetails!.bloodGroup.toString(),
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
                        "Age",
                        style: TextStyle(
                          color: AppColors.black45,
                          fontSize: 10,
                        ),
                      ),
                      AppSpaces.spaces_height_5,
                      Text(
                        '${widget.donorDetails!.age} years',
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
                        "Mobile",
                        style: TextStyle(
                          color: AppColors.black45,
                          fontSize: 10,
                        ),
                      ),
                      AppSpaces.spaces_height_5,
                      Text(
                        widget.donorDetails!.mobile.toString(),
                        style: const TextStyle(
                          fontSize: 14,
                          overflow: TextOverflow.ellipsis,
                        ),
                        maxLines: 2,
                      ),
                    ],
                  ),
                ],
              ),
              AppSpaces.spaces_height_10,
              AppSpaces.spaces_width_15,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Address",
                    style: TextStyle(
                      color: AppColors.black45,
                      fontSize: 10,
                    ),
                  ),
                  AppSpaces.spaces_height_5,
                  Text(
                    "${widget.donorDetails!.address}",
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              AppSpaces.spaces_height_15,
              Row(
                children: [
                  InkWell(
                    onTap: widget.acceptTap,
                    child: Container(
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
                              'Accept Request',
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
                    onTap: widget.cancelTap,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(5.0),
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
                              'Reject Request',
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
          ),
        ],
      ),
    );
  }
}
