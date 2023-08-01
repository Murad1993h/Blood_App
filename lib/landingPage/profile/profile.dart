import 'package:blood_apps/helpers/app_colors.dart';
import 'package:blood_apps/helpers/app_spaces.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.black12,
              child: Image.asset(
                'assets/icon/app_icons/user.png',
                height: 40,
                width: 40,
              ),
            ),
            AppSpaces.spaces_height_5,
            const Text(
              "Md Mostafizur Rahman",
              style: TextStyle(fontSize: 20),
            ),
            AppSpaces.spaces_height_10,
            Container(
              height: 30,
              width: 160,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton(
                onPressed: () {
                  // Your code here
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  // padding: EdgeInsets.symmetric(vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Expanded(
                      child: Icon(
                        Icons.fingerprint_outlined,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      'VIEW BADGES',
                      style: TextStyle(color: Colors.red),
                    ),

                    // Add some spacing between the icon and text
                  ],
                ),
              ),
            ),
            AppSpaces.spaces_height_15,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: const [
                    Text("250"),
                    Text(
                      "Followers",
                      style: TextStyle(color: Colors.black38),
                    ),
                  ],
                ),
                AppSpaces.spaces_width_35,
                Column(
                  children: const [
                    Text("169"),
                    Text(
                      "Following",
                      style: TextStyle(color: Colors.black38),
                    ),
                  ],
                ),
              ],
            ),
            AppSpaces.spaces_height_10,
            ElevatedButton(
              onPressed: () {
                // Your code here
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                padding: const EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('INSIGHT'),

                  SizedBox(width: 5),
                  Icon(Icons.online_prediction_sharp),
                  // Add some spacing between the icon and text
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Blood Group"),
                        AppSpaces.spaces_height_5,
                        const Text("Date of Birth"),
                        AppSpaces.spaces_height_5,
                        const Text("Mobile"),
                        AppSpaces.spaces_height_5,
                        const Text("Email"),
                        AppSpaces.spaces_height_5,
                        const Text("Address"),
                        AppSpaces.spaces_height_5,
                        const Text("Gender"),
                        AppSpaces.spaces_height_5,
                        const Text("Weight"),
                        AppSpaces.spaces_height_5,
                        const Text("Last Donation"),
                        //SizedBox(width:50),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "O+ve",
                          style: TextStyle(color: Colors.black38),
                        ),
                        AppSpaces.spaces_height_5,
                        const Text(
                          "Apr 20, 1999",
                          style: TextStyle(color: Colors.black38),
                        ),
                        AppSpaces.spaces_height_5,
                        const Text(
                          "01949844233",
                          style: TextStyle(color: Colors.black38),
                        ),
                        AppSpaces.spaces_height_5,
                        const Text(
                          "user@gmail.com",
                          style: TextStyle(color: Colors.black38),
                        ),
                        AppSpaces.spaces_height_5,
                        const Text(
                          "Mirpur,Dhaka",
                          style: TextStyle(color: Colors.black38),
                        ),
                        AppSpaces.spaces_height_5,
                        const Text(
                          "Male",
                          style: TextStyle(color: Colors.black38),
                        ),
                        AppSpaces.spaces_height_5,
                        const Text(
                          "64 kg",
                          style: TextStyle(color: Colors.black38),
                        ),
                        AppSpaces.spaces_height_5,
                        const Text(
                          "Mar 12, 2023",
                          style: TextStyle(color: Colors.black38),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
