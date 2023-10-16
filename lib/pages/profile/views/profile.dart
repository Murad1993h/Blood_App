import 'package:blood_apps/helpers/app_colors.dart';
import 'package:blood_apps/helpers/app_spaces.dart';
import 'package:blood_apps/main.dart';
import 'package:blood_apps/pages/profile/controllers/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../go_to_login.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Consumer<ProfileController>(builder: (context, profileData, child) {
          return prefs!.getBool('guestLogIn') == true
              ? const GoToLogIn()
              : ListView(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: CircleAvatar(
                                      radius: 40,
                                      backgroundColor: Colors.black12,
                                      child: Image.network(
                                        profileData.profileModel!.profile!.profilePhotoUrl.toString(),
                                        height: 40,
                                        width: 40,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            profileData.profileModel!.profile!.name.toString(),
                                            style: const TextStyle(fontSize: 18),
                                          ),
                                          AppSpaces.spaces_height_5,
                                          Text(
                                            profileData.profileModel!.profile!.donorDetails!.occupation.toString(),
                                            style: const TextStyle(fontSize: 14),
                                          ),
                                          AppSpaces.spaces_height_2,
                                          Text(
                                            profileData.profileModel!.profile!.donorDetails!.address.toString(),
                                            style: const TextStyle(fontSize: 14),
                                            maxLines: 3,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Positioned(
                                top: 0,
                                right: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: AppColors.primaryColor.withOpacity(0.2),
                                        spreadRadius: 2,
                                        blurRadius: 2,
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Image.asset(
                                      'assets/images/benefit.png',
                                      height: 30,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          AppSpaces.spaces_height_10,
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: AppColors.primaryColor.withOpacity(0.3),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 2,
                                        blurRadius: 2,
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      profileData.profileModel!.profile!.donorDetails!.userId.toString(),
                                      style: const TextStyle(fontSize: 14),
                                    ),
                                  ),
                                ),
                                // Text(
                                //   ' - referred by ${profileData.userListModel!.userList!.firstWhere((element) => element.donorDetails!.referId == profileData.profileModel!.profile!.donorDetails!.referId).name ?? 'No'}',
                                //   style: const TextStyle(fontSize: 14),
                                // ),
                              ],
                            ),
                          ),
                          AppSpaces.spaces_height_10,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: AppColors.textColor.withOpacity(0.3),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(3.0),
                                  child: Text(
                                    'No of Donation (5)',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: AppColors.blue.withOpacity(0.3),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(3.0),
                                  child: Text('No of Request (5)'),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: AppColors.green.withOpacity(0.3),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(3.0),
                                  child: Text('Balance (1000)'),
                                ),
                              ),
                            ],
                          ),
                          AppSpaces.spaces_height_5,
                        ],
                      ),
                    ),
                    AppSpaces.spaces_height_20,
                    Container(
                      //height: double.infinity,
                      width: Get.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.blue.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                'assets/images/facebook.png',
                                fit: BoxFit.cover,
                                height: 35,
                              ),
                            ),
                            Container(
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.red.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                'assets/images/instagram.png',
                                fit: BoxFit.cover,
                                height: 35,
                              ),
                            ),
                            Container(
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.blue.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                'assets/images/linkedin.png',
                                fit: BoxFit.cover,
                                height: 35,
                              ),
                            ),
                            Container(
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.red.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                'assets/images/youtube.png',
                                fit: BoxFit.cover,
                                height: 35,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    AppSpaces.spaces_height_20,
                    Column(
                      children: [
                        Container(
                          //height: double.infinity,
                          width: Get.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 2,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Expanded(flex: 4, child: Text("Blood Group")),
                                    Expanded(
                                      flex: 7,
                                      child: Text(
                                        profileData.profileModel!.profile!.donorDetails!.bloodGroup.toString(),
                                        style: const TextStyle(color: Colors.black38),
                                      ),
                                    ),
                                  ],
                                ),
                                AppSpaces.spaces_height_5,
                                Row(
                                  children: [
                                    const Expanded(flex: 4, child: Text("Date of Birth")),
                                    Expanded(
                                      flex: 7,
                                      child: Text(
                                        profileData.profileModel!.profile!.donorDetails!.birthDate.toString(),
                                        style: const TextStyle(color: Colors.black38),
                                      ),
                                    ),
                                  ],
                                ),
                                AppSpaces.spaces_height_5,
                                Row(
                                  children: [
                                    const Expanded(flex: 4, child: Text("Mobile")),
                                    Expanded(
                                      flex: 7,
                                      child: Text(
                                        profileData.profileModel!.profile!.donorDetails!.mobile.toString(),
                                        style: const TextStyle(color: Colors.black38),
                                      ),
                                    ),
                                  ],
                                ),
                                AppSpaces.spaces_height_5,
                                Row(
                                  children: [
                                    const Expanded(flex: 4, child: Text("Email")),
                                    Expanded(
                                      flex: 7,
                                      child: Text(
                                        profileData.profileModel!.profile!.donorDetails!.email.toString(),
                                        style: const TextStyle(color: Colors.black38),
                                      ),
                                    ),
                                  ],
                                ),
                                AppSpaces.spaces_height_5,
                                Row(
                                  children: [
                                    const Expanded(flex: 4, child: Text("Address")),
                                    Expanded(
                                      flex: 7,
                                      child: Text(
                                        profileData.profileModel!.profile!.donorDetails!.address.toString(),
                                        style: const TextStyle(color: Colors.black38),
                                      ),
                                    ),
                                  ],
                                ),
                                AppSpaces.spaces_height_5,
                                Row(
                                  children: [
                                    const Expanded(flex: 4, child: Text("Gender")),
                                    Expanded(
                                      flex: 7,
                                      child: Text(
                                        profileData.profileModel!.profile!.donorDetails!.gender.toString(),
                                        style: const TextStyle(color: Colors.black38),
                                      ),
                                    ),
                                  ],
                                ),
                                AppSpaces.spaces_height_5,
                                Row(
                                  children: [
                                    const Expanded(flex: 4, child: Text("Weight")),
                                    Expanded(
                                      flex: 7,
                                      child: Text(
                                        profileData.profileModel!.profile!.donorDetails!.weight.toString(),
                                        style: const TextStyle(color: Colors.black38),
                                      ),
                                    ),
                                  ],
                                ),
                                AppSpaces.spaces_height_5,
                                Row(
                                  children: [
                                    const Expanded(flex: 4, child: Text("Last Donation")),
                                    Expanded(
                                      flex: 7,
                                      child: Text(
                                        profileData.profileModel!.profile!.donorDetails!.lastDonateDate.toString(),
                                        style: const TextStyle(color: Colors.black38),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    AppSpaces.spaces_height_20,
                  ],
                );
        }),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
