import 'package:another_flushbar/flushbar.dart';
import 'package:blood_apps/helpers/app_spaces.dart';
import 'package:blood_apps/helpers/urls.dart';
import 'package:blood_apps/main.dart';
import 'package:blood_apps/pages/blood_request/controller/blood_requeat_controller.dart';
import 'package:blood_apps/pages/home/components/achivement_card.dart';
import 'package:blood_apps/pages/home/controllers/home_controller.dart';
import 'package:blood_apps/pages/profile/controllers/profile_controller.dart';
import 'package:blood_apps/route/route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../helpers/app_colors.dart';
import '../blood_request/view/components/request_card_home.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  HomeController? homeController;
  ProfileController? profileController;
  BloodRequestController? bloodRequestController;

  @override
  void initState() {
    // TODO: implement initState
    homeController = Provider.of<HomeController>(context, listen: false);
    profileController = Provider.of<ProfileController>(context, listen: false);
    bloodRequestController = Provider.of<BloodRequestController>(context, listen: false);

    bloodRequestController!.getRunningRequest();

    if (prefs!.getBool('guestLogIn') == false) {
      bloodRequestController!.getMyResponseRequest(prefs!.getString('userId').toString());
      bloodRequestController!.getMyRequests();
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Consumer<HomeController>(builder: (context, homeData, child) {
        return Column(
          children: [
            ///Donation History
            Container(
              decoration: BoxDecoration(
                color: AppColors.primaryColor.withOpacity(.1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/icon/app_icons/location-mark.png',
                      height: 30,
                      width: 30,
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          text: "Lifetime Donation".tr,
                          style: DefaultTextStyle.of(context).style,
                          children: const <TextSpan>[
                            TextSpan(
                              text: ' (5 Times)',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "VIEW HISTORY".tr,
                          style: TextStyle(color: AppColors.primaryColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: ListView(
                  children: [
                    ///Welcome Text
                    Text(
                      "Hi, ${prefs!.getString('userName') ?? ''}",
                      style: TextStyle(
                        color: AppColors.textColor,
                        fontSize: 20,
                      ),
                    ),
                    AppSpaces.spaces_height_10,
                    homeData.sliderModel != null
                        ? Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            child: CarouselSlider(
                              items: List.generate(
                                homeData.sliderModel!.slider!.length,
                                (index) => Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        '${image_url}slider/${homeData.sliderModel!.slider![index].image}',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Container(
                                    alignment: Alignment.bottomCenter,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          AppColors.black.withOpacity(0.6),
                                          Colors.transparent,
                                        ],
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                      ),
                                    ),
                                    width: MediaQuery.of(context).size.width,
                                    child: Text(
                                      homeData.sliderModel!.slider![index].sliderTitle.toString(),
                                      style: TextStyle(
                                        color: AppColors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                              options: CarouselOptions(
                                autoPlay: true,
                                enlargeCenterPage: true,
                                aspectRatio: 16 / 9,
                                viewportFraction: 0.8,
                                autoPlayCurve: Curves.fastOutSlowIn,
                                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                              ),
                            ),
                          )
                        : Container(),

                    AppSpaces.spaces_height_10,

                    Consumer<ProfileController>(builder: (context, profileData, index) {
                      return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: profileData.achivementModel != null
                            ? Row(
                                // alignment: WrapAlignment.center,
                                children: [
                                  AchievementCard(
                                    title: 'Total Donor',
                                    count: profileData.achivementModel!.totalDonor.toString(),
                                    imagePath: 'assets/icon/app_icons/donor.png',
                                    onTap: () {},
                                  ),
                                  AchievementCard(
                                    title: 'Total Hospital',
                                    count: profileData.achivementModel!.totalHospital.toString(),
                                    imagePath: 'assets/icon/app_icons/hospital-building.png',
                                    onTap: () {},
                                  ),
                                  AchievementCard(
                                    title: 'Total University',
                                    count: profileData.achivementModel!.totalUniversity.toString(),
                                    imagePath: 'assets/icon/app_icons/school.png',
                                    onTap: () {},
                                  ),
                                  AchievementCard(
                                    title: 'Total Groups',
                                    count: profileData.achivementModel!.totalGroup.toString(),
                                    imagePath: 'assets/icon/app_icons/donors.png',
                                    onTap: () {},
                                  ),
                                  AchievementCard(
                                    title: 'Total Events',
                                    count: profileData.achivementModel!.totalEvent.toString(),
                                    imagePath: 'assets/icon/app_icons/people.png',
                                    onTap: () {},
                                  ),
                                ],
                              )
                            : Container(),
                      );
                    }),

                    AppSpaces.spaces_height_10,

                    Divider(
                      thickness: 1.0,
                      color: AppColors.primaryColor.withOpacity(.3),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Blood Requests',
                            style: TextStyle(fontSize: 16),
                          ),
                          InkWell(
                            onTap: () {
                              Get.toNamed(requestList);
                            },
                            child: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Divider(
                      thickness: 1.0,
                      color: AppColors.primaryColor.withOpacity(.3),
                    ),

                    AppSpaces.spaces_height_10,

                    Consumer<BloodRequestController>(builder: (context, bloodData, child) {
                      return prefs!.getBool('guestLogIn') == true && bloodData.runningBloodRequestModel != null
                          ? SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(
                                    bloodData.runningBloodRequestModel!.requestList!.length > 5
                                        ? 5
                                        : bloodData.runningBloodRequestModel!.requestList!.length,
                                    (index) => RequestCardHome(
                                          accepted: bloodData.myResponseModel != null
                                              ? bloodData.myResponseModel!.data!.where((e) {
                                                  return e.requestId.toString() ==
                                                      bloodData.runningBloodRequestModel!.requestList![index].id.toString();
                                                }).toList()
                                              : [],
                                          index: index,
                                          fromWhere: 'home',
                                          runningRequestList: bloodData.runningBloodRequestModel!.requestList![index],
                                          onTap: () {
                                            Flushbar(
                                                flushbarPosition: FlushbarPosition.BOTTOM,
                                                isDismissible: false,
                                                backgroundColor: AppColors.lime,
                                                duration: const Duration(seconds: 3),
                                                messageText: Text(
                                                  "Please Login First",
                                                  style: TextStyle(
                                                    fontSize: 16.0,
                                                    color: AppColors.darkGreen,
                                                  ),
                                                )).show(context);
                                          },
                                        )),
                              ),
                            )
                          : bloodData.runningBloodRequestModel != null && bloodData.myResponseModel != null
                              ? SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: List.generate(
                                        bloodData.runningBloodRequestModel!.requestList!.length > 5
                                            ? 5
                                            : bloodData.runningBloodRequestModel!.requestList!.length,
                                        (index) => RequestCardHome(
                                              accepted: bloodData.myResponseModel != null
                                                  ? bloodData.myResponseModel!.data!.where((e) {
                                                      return e.requestId.toString() ==
                                                          bloodData.runningBloodRequestModel!.requestList![index].id.toString();
                                                    }).toList()
                                                  : [],
                                              index: index,
                                              fromWhere: 'home',
                                              runningRequestList: bloodData.runningBloodRequestModel!.requestList![index],
                                              onTap: () {
                                                Flushbar(
                                                    flushbarPosition: FlushbarPosition.BOTTOM,
                                                    isDismissible: false,
                                                    backgroundColor: AppColors.lime,
                                                    duration: const Duration(seconds: 3),
                                                    messageText: Text(
                                                      "Please Login First",
                                                      style: TextStyle(
                                                        fontSize: 16.0,
                                                        color: AppColors.darkGreen,
                                                      ),
                                                    )).show(context);
                                              },
                                            )),
                                  ),
                                )
                              : Container();
                    }),

                    AppSpaces.spaces_height_20,
                  ],
                ),
              ),
            ),
          ],
        );
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: InkWell(
        onTap: () {
          Get.toNamed(bloodRequest);
        },
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            border: Border.all(color: AppColors.white),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(
              'assets/icon/app_icons/question.png',
              height: 30,
              width: 30,
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
