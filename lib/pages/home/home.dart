import 'package:blood_apps/helpers/app_spaces.dart';
import 'package:blood_apps/helpers/urls.dart';
import 'package:blood_apps/main.dart';
import 'package:blood_apps/pages/blood_request/controller/blood_requeat_controller.dart';
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

    bloodRequestController!.getMyResponseRequest(prefs!.getString('userId').toString());
    bloodRequestController!.getMyRequests();
    // homeController!.getSliders();
    loadData();
    super.initState();
  }

  void loadData() async {
    debugPrint('Load Data');
    await profileController!.getLocations();
    await profileController!.getHospital();
    await profileController!.getGroupList();
    await profileController!.getUniversityList();
    await profileController!.getUsers();
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
                      "Hi, ${prefs!.getString('userName')}",
                      style: TextStyle(
                        color: AppColors.textColor,
                        fontSize: 20,
                      ),
                    ),
                    AppSpaces.spaces_height_15,
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
                    AppSpaces.spaces_height_15,

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Upcoming Requests',
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
                    AppSpaces.spaces_height_15,

                    Consumer<BloodRequestController>(builder: (context, bloodData, child) {
                      return bloodData.runningBloodRequestModel != null && bloodData.myResponseModel != null
                          ? Container(
                              height: 185,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemCount: bloodData.runningBloodRequestModel!.requestList!.length > 5
                                      ? 5
                                      : bloodData.runningBloodRequestModel!.requestList!.length,
                                  itemBuilder: (context, index) {
                                    return bloodData.runningBloodRequestModel!.requestList![index].requestBy.toString() == prefs!.getString('userId')
                                        ? Container()
                                        : RequestCardHome(
                                            accepted: bloodData.myResponseModel!.data!.where((e) {
                                              return e.requestId.toString() == bloodData.runningBloodRequestModel!.requestList![index].id.toString();
                                            }).toList(),
                                            index: index,
                                            fromWhere: 'home',
                                            runningRequestList: bloodData.runningBloodRequestModel!.requestList![index],
                                            onTap: () {
                                              var body = {
                                                "request_id": bloodData.runningBloodRequestModel!.requestList![index].id,
                                                "request_by": bloodData.runningBloodRequestModel!.requestList![index].requestBy,
                                                "user": prefs!.getString('userId'),
                                                "donor_id": prefs!.getString('donorId'),
                                              };
                                              bloodData.acceptRequest(context, body);

                                              // BloodRequestFunction.showRequestDialog(
                                              //   context,
                                              //   bloodData.runningBloodRequestModel!.requestList![index],
                                              // );
                                            },
                                          );
                                  }),
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
