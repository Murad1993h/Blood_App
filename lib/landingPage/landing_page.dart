import 'package:blood_apps/bottomBar/bottom_bar_item.dart';
import 'package:blood_apps/bottomBar/bottom_nav_bar.dart';
import 'package:blood_apps/helpers/app_colors.dart';
import 'package:blood_apps/landingPage/home.dart';
import 'package:blood_apps/pages/message/messages.dart';
import 'package:blood_apps/pages/profile/views/profile.dart';
import 'package:blood_apps/under_construction.dart';
import 'package:flutter/material.dart';

import '../helpers/app_spaces.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List<Widget> screen = [
    const Home(),
    const UnderConstruction(),
    const Massages(),
    const Profile(),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            leading: IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black38,
              ),
              onPressed: () {},
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
      ],
    );
  }
}
