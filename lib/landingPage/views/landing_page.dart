import 'package:blood_apps/bottomBar/bottom_bar_item.dart';
import 'package:blood_apps/bottomBar/bottom_nav_bar.dart';
import 'package:blood_apps/helpers/app_colors.dart';
import 'package:blood_apps/landingPage/views/menu_screen.dart';
import 'package:blood_apps/pages/home/home.dart';
import 'package:blood_apps/pages/message/messages.dart';
import 'package:blood_apps/pages/profile/views/profile.dart';
import 'package:blood_apps/pages/under_construction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:provider/provider.dart';

import '../../helpers/app_spaces.dart';
import '../../helpers/dialogue/dialogues.dart';
import '../../main.dart';
import '../../pages/home/controllers/home_controller.dart';
import '../../pages/profile/controllers/profile_controller.dart';

final zoomDrawerController = ZoomDrawerController();

class LandingPage extends StatelessWidget {
  LandingPage({super.key});

  void toggleDrawer() {
    print("Toggle drawer");
    zoomDrawerController.toggle?.call();
  }

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: zoomDrawerController,
      style: DrawerStyle.defaultStyle,
      showShadow: true,
      moveMenuScreen: true,
      menuScreen: const MenuScreen(),
      mainScreen: const LandingMainPage(),
      borderRadius: 24.0,
      angle: 0.0,
      drawerShadowsBackgroundColor: Colors.grey,
      slideWidth: MediaQuery.of(context).size.width * 0.65,
      overlayBlend: BlendMode.softLight,
    );
  }
}

class LandingMainPage extends StatefulWidget {
  const LandingMainPage({Key? key}) : super(key: key);

  @override
  _LandingMainPageState createState() => _LandingMainPageState();
}

class _LandingMainPageState extends State<LandingMainPage> {
  List<Widget> screen = [
    const Home(),
    const UnderConstruction(),
    const Massages(),
    const Profile(),
  ];
  int selectedIndex = 0;
  ProfileController? profileController;
  HomeController? homeController;

  @override
  void initState() {
    homeController = Provider.of<HomeController>(context, listen: false);

    profileController = Provider.of<ProfileController>(context, listen: false);

    homeController!.getSliders();
    if (prefs!.getBool('guestLogIn') == false) {
      profileController!.getUserInfo();
    }
    super.initState();
  }

  Future<bool> showExitPopup() async {
    return await DialogHelper.exitDialogue() ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WillPopScope(
          onWillPop: showExitPopup,
          child: Scaffold(
            appBar: AppBar(
              iconTheme: IconThemeData(color: AppColors.darkGreen),
              backgroundColor: Colors.white,
              elevation: 0.0,
              leading: IconButton(
                icon: const Icon(
                  Icons.menu,
                ),
                onPressed: () {
                  ZoomDrawer.of(context)!.toggle();
                },
              ),
              centerTitle: true,
              title: Text(
                selectedIndex == 0
                    ? 'Home'
                    : selectedIndex == 1
                        ? 'Notifications'
                        : selectedIndex == 2
                            ? 'Messages'
                            : 'Profile',
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.darkGreen,
                ),
              ),
            ),
            body: Container(
              child: screen[selectedIndex],
            ),
            bottomNavigationBar: BottomNavBar(
              onTap: (int val) {
                setState(() {
                  selectedIndex = val;
                });
              },
              currentIndex: selectedIndex,
              backgroundColor: Colors.white,
              selectedItemColor: AppColors.textColor,
              unselectedItemColor: AppColors.black12,
              fontSize: 8,
              margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
              // padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
              items: [
                BottomNavBarItem(
                  customWidget: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/icon/app_icons/home.png',
                        color: selectedIndex == 0 ? AppColors.textColor : AppColors.black12,
                        width: 20,
                        height: 20,
                      ),
                      AppSpaces.spaces_height_2,
                      Text(
                        'Home',
                        style: TextStyle(
                          fontSize: 10,
                          color: selectedIndex == 0 ? AppColors.textColor : AppColors.black12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                BottomNavBarItem(
                  customWidget: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/icon/app_icons/notification.png',
                        color: selectedIndex == 1 ? AppColors.textColor : AppColors.black12,
                        width: 20,
                        height: 20,
                      ),
                      AppSpaces.spaces_height_2,
                      Text(
                        'Notifications',
                        style: TextStyle(
                          fontSize: 10,
                          color: selectedIndex == 1 ? AppColors.textColor : AppColors.black12,
                        ),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                        softWrap: false,
                      ),
                    ],
                  ),
                ),
                BottomNavBarItem(
                  customWidget: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/icon/app_icons/conversation.png',
                        color: selectedIndex == 2 ? AppColors.textColor : AppColors.black12,
                        width: 20,
                        height: 20,
                      ),
                      AppSpaces.spaces_height_2,
                      Text(
                        'Messages',
                        style: TextStyle(
                          fontSize: 10,
                          color: selectedIndex == 2 ? AppColors.textColor : AppColors.black12,
                        ),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                        softWrap: false,
                      ),
                    ],
                  ),
                ),
                BottomNavBarItem(
                  customWidget: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/icon/app_icons/user.png',
                        color: selectedIndex == 3 ? AppColors.textColor : AppColors.black12,
                        width: 20,
                        height: 20,
                      ),
                      AppSpaces.spaces_height_2,
                      Text(
                        'Profile',
                        style: TextStyle(
                          fontSize: 10,
                          color: selectedIndex == 3 ? AppColors.textColor : AppColors.black12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
