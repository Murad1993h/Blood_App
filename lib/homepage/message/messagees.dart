import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../route/route.dart';

class Massages extends StatefulWidget {
  const Massages({Key? key}) : super(key: key);

  @override
  State<Massages> createState() => _MassagesState();
}

class _MassagesState extends State<Massages> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.black,
        ),
        title: Text(
          "Chat",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black12,
                        radius: 30,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Nayeem Rahman"),
                            SizedBox(width: 10,),
                            Text(
                              "Just now",
                              style: TextStyle(color: Colors.black26),
                            ),
                          ],
                        ),
                        Text(
                          "Looks good!",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 1,
                  color: Colors.black12,
                ),
              ),

              SizedBox(height: 12,),
              Row(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black12,
                        radius: 30,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Nayeem Rahman"),
                            SizedBox(width: 10,),
                            Text(
                              "Just now",
                              style: TextStyle(color: Colors.black26),
                            ),
                          ],
                        ),
                        Text(
                          "Looks good!",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 1,
                  color: Colors.black12,
                ),
              ),
              SizedBox(height: 12,),
              Row(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black12,
                        radius: 30,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Nayeem Rahman"),
                            SizedBox(width: 10,),
                            Text(
                              "Just now",
                              style: TextStyle(color: Colors.black26),
                            ),
                          ],
                        ),
                        Text(
                          "Looks good!",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 1,
                  color: Colors.black12,
                ),
              ),
              SizedBox(height: 12,),
              Row(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black12,
                        radius: 30,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Nayeem Rahman"),
                            SizedBox(width: 10,),
                            Text(
                              "Just now",
                              style: TextStyle(color: Colors.black26),
                            ),
                          ],
                        ),
                        Text(
                          "Looks good!",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 1,
                  color: Colors.black12,
                ),
              ),
              SizedBox(height: 12,),
              Row(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black12,
                        radius: 30,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Nayeem Rahman"),
                            SizedBox(width: 10,),
                            Text(
                              "Just now",
                              style: TextStyle(color: Colors.black26),
                            ),
                          ],
                        ),
                        Text(
                          "Looks good!",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 1,
                  color: Colors.black12,
                ),
              ),
              SizedBox(height: 12,),
              Row(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black12,
                        radius: 30,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Nayeem Rahman"),
                            SizedBox(width: 10,),
                            Text(
                              "Just now",
                              style: TextStyle(color: Colors.black26),
                            ),
                          ],
                        ),
                        Text(
                          "Looks good!",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 1,
                  color: Colors.black12,
                ),
              ),
              SizedBox(height: 12,),
              Row(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black12,
                        radius: 30,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Nayeem Rahman"),
                            SizedBox(width: 10,),
                            Text(
                              "Just now",
                              style: TextStyle(color: Colors.black26),
                            ),
                          ],
                        ),
                        Text(
                          "Looks good!",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 1,
                  color: Colors.black12,
                ),
              ),
              SizedBox(height: 12,),
              Row(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black12,
                        radius: 30,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Nayeem Rahman"),
                            SizedBox(width: 10,),
                            Text(
                              "Just now",
                              style: TextStyle(color: Colors.black26),
                            ),
                          ],
                        ),
                        Text(
                          "Looks good!",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 1,
                  color: Colors.black12,
                ),
              ),
              SizedBox(height: 12,),
              Row(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black12,
                        radius: 30,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Nayeem Rahman"),
                            SizedBox(width: 10,),
                            Text(
                              "Just now",
                              style: TextStyle(color: Colors.black26),
                            ),
                          ],
                        ),
                        Text(
                          "Looks good!",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 1,
                  color: Colors.black12,
                ),
              ),
            ],

          ),
        ),
      ),






      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            // backgroundColor: Colors.blue,

            icon: InkWell(
                onTap: () => Get.toNamed(home),
                child: Icon(
                  Icons.home,
                  color: Colors.black38,
                )),
            label: 'Home',
            // backgroundColor: Colors.red,
          ),





          BottomNavigationBarItem(
            icon: InkWell(
                onTap: () => Get.toNamed(notification),
                child: Icon(
                  Icons.notifications_none,
                  color: Colors.black38,
                )),
            label: 'Notification',
            // backgroundColor: Colors.purple,
          ),

          BottomNavigationBarItem(
            icon: InkWell(
                onTap: () => Get.toNamed(massages),
                child: Icon(
                  Icons.sms_outlined,
                  color: Colors.black38,
                )),
            label: 'Business',
            //backgroundColor: Colors.green,
          ),

          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () => Get.toNamed(profile),
              child: Icon(
                Icons.person_rounded,
                color: Colors.black38,
              ),
            ),
            label: 'Profile',
            // backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black38,
        onTap: _onItemTapped,
      ),
    );
  }
}
