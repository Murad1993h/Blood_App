import 'package:blood_apps/helpers/app_colors.dart';
import 'package:blood_apps/pages/menu_pages/components/hospital/hospital_card.dart';
import 'package:blood_apps/pages/profile/controllers/profile_controller.dart';
import 'package:blood_apps/route/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../helpers/urls.dart';

class HospitalList extends StatefulWidget {
  const HospitalList({Key? key}) : super(key: key);

  @override
  State<HospitalList> createState() => _HospitalListState();
}

class _HospitalListState extends State<HospitalList> {
  ProfileController? profileController;

  @override
  void initState() {
    // TODO: implement initState

    profileController = Provider.of<ProfileController>(context, listen: false);

    // profileController!.getHospital();
    super.initState();
  }

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
          'Hospital List'.tr,
          style: TextStyle(
            fontSize: 18,
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Image.asset(
                'assets/icon/app_icons/filter.png',
                height: 25,
                color: AppColors.primaryColor,
              ),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),
        ],
      ),
      body: Consumer<ProfileController>(builder: (context, hospitalData, child) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            itemCount: hospitalData.hospitalModel!.data!.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 6.0,
            ),
            itemBuilder: (context, index) {
              return HospitalCard(
                onTap: () {
                  Get.toNamed(
                    hospitalView,
                    arguments: hospitalData.hospitalModel!.data![index],
                  );
                },
                name: hospitalData.hospitalModel!.data![index].name.toString(),
                address: hospitalData.hospitalModel!.data![index].address.toString(),
                image: '${image_url}hospital/${hospitalData.hospitalModel!.data![index].image}',
                mobile: hospitalData.hospitalModel!.data![index].mobile.toString(),
                districtId: hospitalData.locationModel!.district!
                    .firstWhere(
                      (element) => element.id.toString() == hospitalData.hospitalModel!.data![index].districtId.toString(),
                    )
                    .name,
              );
            },
          ),
        );
      }),
      endDrawer: Container(
        height: Get.height,
        width: Get.width * .55,
        decoration: BoxDecoration(
          color: AppColors.white,
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Filter by District',
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    width: Get.width,
                    decoration: BoxDecoration(
                      // color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: AppColors.primaryColor),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Apply'.tr,
                        style: TextStyle(color: AppColors.primaryColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
