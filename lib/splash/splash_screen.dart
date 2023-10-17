import 'package:blood_apps/helpers/app_colors.dart';
import 'package:blood_apps/main.dart';
import 'package:blood_apps/pages/profile/controllers/profile_controller.dart';
import 'package:blood_apps/route/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../authentication/controllers/authController.dart';
import '../pages/home/controllers/home_controller.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  ProfileController? profileController;
  HomeController? homeController;
  AuthController? authController;

  @override
  void initState() {
    homeController = Provider.of<HomeController>(context, listen: false);
    profileController = Provider.of<ProfileController>(context, listen: false);
    authController = Provider.of<AuthController>(context, listen: false);

    Future.delayed(
      const Duration(seconds: 3),
      () {
        if (prefs!.getBool('isLogin') == true) {
          var body = {
            'email': prefs!.getString('userEmail'),
            'password': prefs!.getString('userPassword'),
          };

          authController!.logIn(
            context,
            body,
            requestAgain: true,
          );
          loadData();
          Get.toNamed(landing);
        } else {
          loadData();
          Get.toNamed(onbordings);
        }
      },
    );

    super.initState();
  }

  void loadData() async {
    debugPrint('Load Data');
    await profileController!.getAchievement();
    await profileController!.getLocations();
    await profileController!.getHospital();
    await profileController!.getGroupList();
    await profileController!.getUniversityList();
    await profileController!.getUsers();

    debugPrint('Load Data Complete');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          //decoration: appColor(),
          width: double.maxFinite,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset('assets/logo/sbdms_logo.png'),
                Text(
                  'app_name'.tr,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: AppColors.darkGreen,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
