import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

import '../../../../helpers/app_colors.dart';
import '../../../../helpers/app_spaces.dart';
import '../../../../helpers/urls.dart';
import '../../../profile/models/HospitalModel.dart';

class HospitalView extends StatefulWidget {
  const HospitalView({Key? key}) : super(key: key);

  @override
  State<HospitalView> createState() => _HospitalViewState();
}

class _HospitalViewState extends State<HospitalView> {
  final HospitalData? hospitalData = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: AppColors.primaryColor,
        ),
        backgroundColor: AppColors.white,
        elevation: 1.0,
        centerTitle: true,
        title: Text(
          hospitalData!.name.toString(),
          style: TextStyle(
            fontSize: 18,
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              width: Get.width,
              clipBehavior: Clip.antiAlias,
              height: 150,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
              ),
              child: Image.network(
                "${image_url}hospital/${hospitalData!.image}",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 120,
              left: 10,
              right: 10,
            ),
            width: Get.width,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ///Stacked Container
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      border: Border.all(
                        color: AppColors.lime,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.lime.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'Hospital Overview',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.textColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: hospitalData!.status.toString() == '1' ? AppColors.lime : AppColors.red,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  hospitalData!.status.toString() == '1' ? 'Verified' : 'Not Verified',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: hospitalData!.status.toString() == '1' ? AppColors.textColor : AppColors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              ReadMoreText(
                                hospitalData!.description.toString(),
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColors.textColor,
                                  fontWeight: FontWeight.w400,
                                ),
                                trimLines: 2,
                                trimMode: TrimMode.Length,
                                trimCollapsedText: 'Show more',
                                trimExpandedText: ' Show less',
                                moreStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.darkGreen,
                                ),
                                lessStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.darkGreen,
                                ),
                              ),
                              AppSpaces.spaces_height_25,
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/icon/app_icons/blood-bank.png',
                                    height: 15,
                                  ),
                                  AppSpaces.spaces_width_10,
                                  Text(
                                    hospitalData!.bloodBank.toString() == '1' ? 'Blood Bank Available' : 'No Blood Bank',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.textColor,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              AppSpaces.spaces_height_10,
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/icon/app_icons/discount.png',
                                    height: 15,
                                  ),
                                  AppSpaces.spaces_width_10,
                                  Expanded(
                                    child: Text(
                                      "${hospitalData!.discount.toString()}% off for Heath Card Holder",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.textColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              AppSpaces.spaces_height_10,
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/icon/app_icons/placeholder.png',
                                    height: 15,
                                  ),
                                  AppSpaces.spaces_width_10,
                                  Expanded(
                                    child: Text(
                                      hospitalData!.address.toString(),
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.textColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              AppSpaces.spaces_height_10,
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/icon/app_icons/web.png',
                                    height: 15,
                                  ),
                                  AppSpaces.spaces_width_10,
                                  Expanded(
                                    child: Text(
                                      hospitalData!.websiteUrl.toString(),
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.textColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              AppSpaces.spaces_height_25,
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: AppColors.darkGreen,
                                        borderRadius: BorderRadius.circular(5.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/icon/app_icons/telephone.png',
                                              height: 15,
                                              color: AppColors.white,
                                            ),
                                            AppSpaces.spaces_width_5,
                                            Text(
                                              'Call',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: AppColors.white,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  AppSpaces.spaces_width_5,
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: AppColors.textColor,
                                        borderRadius: BorderRadius.circular(5.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/icon/app_icons/email.png',
                                              height: 15,
                                              color: AppColors.white,
                                            ),
                                            AppSpaces.spaces_width_5,
                                            Text(
                                              'Email',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: AppColors.white,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  AppSpaces.spaces_width_5,
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: AppColors.primaryColor,
                                        borderRadius: BorderRadius.circular(5.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/icon/app_icons/google-maps.png',
                                              height: 15,
                                              color: AppColors.white,
                                            ),
                                            AppSpaces.spaces_width_5,
                                            Text(
                                              'Map',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: AppColors.white,
                                                fontWeight: FontWeight.w400,
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
                      ],
                    ),
                  ),

                  ///Add New elements under stacked container here
                  AppSpaces.spaces_height_15,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
