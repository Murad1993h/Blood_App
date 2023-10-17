import 'package:another_flushbar/flushbar.dart';
import 'package:blood_apps/helpers/app_spaces.dart';
import 'package:blood_apps/main.dart';
import 'package:blood_apps/route/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../helpers/app_colors.dart';
import '../controllers/authController.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  //const LogIn({Key? key}) : super(key: key);
  // bool _isChecked = false;

  TextEditingController? emailAddress = TextEditingController();
  TextEditingController? password = TextEditingController();
  AuthController? authController;

  @override
  void initState() {
    authController = Provider.of<AuthController>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool _isChecked = false;
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: AppColors.white,
      //   elevation: 0.0,
      // ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                "Welcome back".tr,
                style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            //InkWell(child: Text("Sign in to continue.")),
            Text(
              "Log in your account.".tr,
              style: const TextStyle(fontSize: 15, color: Colors.black38),
            ),
            AppSpaces.spaces_height_15,
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.black12.withOpacity(.03),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: TextField(
                  controller: emailAddress,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide.none,
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    focusColor: AppColors.primaryColor,
                    isDense: true,
                    contentPadding: const EdgeInsets.all(8.0),
                    label: Text(
                      'Email'.tr,
                      style: const TextStyle(color: Colors.black54, fontSize: 12),
                    ),
                    alignLabelWithHint: false,
                  ),
                  onChanged: (value) {
                    emailAddress!.text = value;
                    emailAddress!.selection = TextSelection.fromPosition(
                      TextPosition(offset: emailAddress!.text.length),
                    );
                  },
                ),
              ),
            ),

            AppSpaces.spaces_height_15,
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.black12.withOpacity(.03),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: TextField(
                  controller: password,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide.none,
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    focusColor: AppColors.primaryColor,
                    isDense: true,
                    contentPadding: const EdgeInsets.all(8.0),
                    label: Text(
                      'Password'.tr,
                      style: const TextStyle(color: Colors.black54, fontSize: 12),
                    ),
                    alignLabelWithHint: false,
                  ),
                  onChanged: (value) {
                    password!.text = value;
                    password!.selection = TextSelection.fromPosition(
                      TextPosition(offset: password!.text.length),
                    );
                  },
                ),
              ),
            ),

            Row(
              children: [
                Checkbox(
                  value: _isChecked,
                  // shape: CircleBorder(),
                  visualDensity: VisualDensity.compact,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                ),
                Text(
                  "Remember me".tr,
                  style: const TextStyle(color: Colors.black38),
                ),
                TextButton(
                  onPressed: () => Get.toNamed(forgotpassword),
                  child: Text("FORGOT PASSWORD".tr, style: const TextStyle(color: Colors.black38)),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  var body = {
                    'email': emailAddress!.text,
                    'password': password!.text,
                  };

                  emailAddress!.text.isNotEmpty && password!.text.isNotEmpty
                      ? authController!.logIn(context, body)
                      : Flushbar(
                          flushbarPosition: FlushbarPosition.BOTTOM,
                          isDismissible: false,
                          backgroundColor: AppColors.lime,
                          duration: const Duration(seconds: 3),
                          messageText: Text(
                            "Please Fill The Form First",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: AppColors.darkGreen,
                            ),
                          )).show(context);
                },
                child: Container(
                  alignment: Alignment.center,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'log_in'.tr,
                      style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.white),
                    ),
                  ),
                ),
              ),
            ),
            AppSpaces.spaces_height_10,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  prefs!.setBool('guestLogIn', true);
                  Get.toNamed(landing);
                },
                child: Container(
                  alignment: Alignment.center,
                  width: Get.width,
                  decoration: BoxDecoration(
                      color: AppColors.white, borderRadius: BorderRadius.circular(5.0), border: Border.all(color: AppColors.primaryColor)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'guest_log_in'.tr,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Row(
                children: [
                  Text("Don't have an account yet?".tr),
                  TextButton(
                    onPressed: () => Get.toNamed(signup),
                    child: Text(
                      "Signup".tr,
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/*Container(
decoration: BoxDecoration(
borderRadius:
BorderRadius.only(topRight: Radius.circular(70)),
color: Colors.blue,
),
child: Column(
children: [

],
),
),*/
