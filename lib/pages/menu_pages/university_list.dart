import 'package:blood_apps/helpers/app_colors.dart';
import 'package:blood_apps/pages/profile/controllers/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'components/university/university_card.dart';

class UniversityList extends StatefulWidget {
  const UniversityList({Key? key}) : super(key: key);

  @override
  State<UniversityList> createState() => _UniversityListState();
}

class _UniversityListState extends State<UniversityList> {
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
          'University List'.tr,
          style: TextStyle(
            fontSize: 18,
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Consumer<ProfileController>(builder: (context, hospitalData, child) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: hospitalData.universityModel != null
              ? ListView.builder(
                  itemCount: hospitalData.universityModel!.data!.length,
                  itemBuilder: (context, index) {
                    return UniversityCard(
                      name: hospitalData.universityModel!.data![index].name.toString(),
                      universityData: hospitalData.universityModel!.data![index],
                      districtId: hospitalData.locationModel!.district!
                          .firstWhere(
                            (element) => element.id.toString() == hospitalData.universityModel!.data![index].districtId.toString(),
                          )
                          .name,
                    );
                  },
                )
              : Container(),
        );
      }),
    );
  }
}
