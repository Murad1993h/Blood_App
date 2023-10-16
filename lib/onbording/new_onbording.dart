import 'package:blood_apps/helpers/app_spaces.dart';
import 'package:blood_apps/route/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../helpers/app_colors.dart';

class Onbordings extends StatefulWidget {
  @override
  _OnbordingsState createState() => _OnbordingsState();
}

class _OnbordingsState extends State<Onbordings> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //Image.asset('assets/profile/img_1.png'),
                      /* SvgPicture.asset(
                        contents[i].image,
                        height: 300,
                      ),*/
                      Image.asset(
                        contents[i].image,
                        height: 300,
                      ),
                      AppSpaces.spaces_height_25,
                      Text(
                        contents[i].title,
                        style: const TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      AppSpaces.spaces_height_20,
                      Text(
                        contents[i].discription,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () => Get.toNamed(login),
              style: ElevatedButton.styleFrom(
                primary: AppColors.primaryColor,
                padding: const EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('GET STARTED'.tr),
                  const SizedBox(width: 5),
                  const Icon(
                    Icons.navigate_next_outlined,
                    size: 30,
                  ),
                  // Add some spacing between the icon and text
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.primaryColor,
      ),
    );
  }
}

class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(title: 'GIVE the Life'.tr, image: 'assets/icon/app_icons/donor.png', discription: "Donate Blood and Save a Life today ".tr),
  UnbordingContent(title: 'Blood for Life'.tr, image: ('assets/icon/blood-brothers.png'), discription: "Connecting donors with those in need ".tr),
];
