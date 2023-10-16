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
          Get.toNamed(landing);
        } else {
          Get.toNamed(onbordings);
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
        body: SizedBox(
          //decoration: appColor(),
          width: double.maxFinite,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'app_name'.tr,
                  style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
