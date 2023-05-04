import 'package:blood_apps/route/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:toggle_switch/toggle_switch.dart';


import 'exampol.dart';

const Color p = Color(0xff416d69);

final ZoomDrawerController z = ZoomDrawerController();

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _ExampolState createState() => _ExampolState();
}

//page 1

class _ExampolState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: z,
      borderRadius: 24,
      style: DrawerStyle.defaultStyle,
      openCurve: Curves.fastOutSlowIn,
      closeCurve: Curves.bounceIn,
      angle: 0.0,

      //3 leyer
      showShadow: true,
      moveMenuScreen: false,
      //openCurve: Curves.fastOutSlowIn,
      slideWidth: MediaQuery.of(context).size.width * 0.65,
      duration: const Duration(milliseconds: 500),
      // angle: 0.0,
      menuBackgroundColor: Colors.red,
      mainScreen: const Body(),
      menuScreen: Theme(
        data: ThemeData.dark(),
        child: SafeArea(
          child: Scaffold(
              backgroundColor: Colors.red,
              body: Padding(
                padding: const EdgeInsets.only(left: 10, top: 40),
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 40.0,
                      backgroundColor: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, top: 40),
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        child: Text(
                          "AB+",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 90),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Sofia Rizvi".tr,
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                onPressed: () => Get.toNamed(home),
                                child: Text(
                                  'VIEW PROFILE'.tr,
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Ready to Donate".tr),
                              SizedBox(
                                width: 4,
                              ),
                              Icon(Icons.swap_horizontal_circle_outlined),
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            //mainAxisSize:  MainAxisSize.max,

                            children: [
                              Icon(Icons.bloodtype_outlined),
                              SizedBox(
                                width: 4,
                              ),
                              Text("BLOOD REQUEST".tr),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            //mainAxisSize:  MainAxisSize.max,

                            children: [
                              Icon(Icons.people_outline_rounded),
                              SizedBox(
                                width: 4,
                              ),
                              Text("PREFERRED DONORS".tr),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            //mainAxisSize:  MainAxisSize.max,

                            children: [
                              Icon(Icons.calendar_month),
                              SizedBox(
                                width: 4,
                              ),
                              Text("UPCOMMING EVENT".tr),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            //mainAxisSize:  MainAxisSize.max,

                            children: [
                              Icon(Icons.share),
                              SizedBox(
                                width: 4,
                              ),
                              Text("INVITE FRIENDS".tr),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            //mainAxisSize:  MainAxisSize.max,

                            children: [
                              Icon(Icons.queue_rounded),
                              SizedBox(
                                width: 4,
                              ),
                              Text("REWARD CARD".tr),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            //mainAxisSize:  MainAxisSize.max,

                            children: [
                              Icon(Icons.card_giftcard),
                              SizedBox(
                                width: 4,
                              ),
                              Text("GIFT POSTS".tr),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: ()=> Get.toNamed(button),
                            child: Row(
                              //mainAxisSize:  MainAxisSize.max,

                              children: [
                               // Icon: Icon(Icons.settings),
                                Icon(Icons.settings),
                                SizedBox(
                                  width: 4,
                                ),
                                Text("SETTINGS".tr),
                              ],
                            ),
                          ),
                          /*Row(
                            //mainAxisSize:  MainAxisSize.max,

                            children: [
                              SizedBox(
                                width: 50,
                                child: PopupMenuButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  icon: Icon(Icons.settings),
                                  onSelected: (value) {},
                                  itemBuilder: (context) {
                                    return [
                                      PopupMenuItem(
                                        value: 'Home',
                                        child: Column(
                                          children: [
                                            ElevatedButton(
                                                onPressed: () {
                                                  Get.updateLocale(
                                                      Locale('en', 'US'));
                                                },
                                                child: Text("English")),
                                            ElevatedButton(
                                                onPressed: () {
                                                  Get.updateLocale(
                                                      Locale('bn', 'BD'));
                                                },
                                                child: Text("বাংলা")),

                                            // ToggleSwitch(
                                            //   minWidth: 50.0,
                                            //   cornerRadius: 20.0,
                                            //   activeBgColors: [
                                            //     [Colors.green[800]!],
                                            //     [Colors.red[800]!]
                                            //   ],
                                            //   activeFgColor: Colors.white,
                                            //   inactiveBgColor: Colors.grey,
                                            //   inactiveFgColor: Colors.white,
                                            //   initialLabelIndex: 1,
                                            //   totalSwitches: 2,
                                            //   labels: ['English', 'বাংলা'],
                                            //
                                            //   radiusStyle: true,
                                            //   onToggle: (index) {
                                            //     Get.updateLocale(Locale('en', 'US'));
                                            //     Get.updateLocale(Locale('bn', 'BD'));
                                            //   },
                                            // ),
                                          ],
                                        ),
                                      ),
                                    ];
                                  },
                                ),
                              )
                              *//* Icon(Icons.settings),
                              SizedBox(width: 4,),
                              Text("SETTINGS"),*//*
                            ],
                          ),*/
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            //mainAxisSize:  MainAxisSize.max,

                            children: [
                              Icon(Icons.star),
                              SizedBox(
                                width: 4,
                              ),
                              Text("RATE US".tr),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            //mainAxisSize:  MainAxisSize.max,

                            children: [
                              Icon(Icons.power_settings_new),
                              SizedBox(
                                width: 4,
                              ),
                              Text("ABOUT".tr),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            //mainAxisSize:  MainAxisSize.max,

                            children: [
                              Icon(Icons.logout_rounded),
                              SizedBox(
                                width: 4,
                              ),
                              Text("LOGOUT".tr),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}















class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  late AnimationController controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 100),
    value: -1.0,
  );

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  bool get isPanelVisible {
    final AnimationStatus status = controller.status;
    return status == AnimationStatus.completed ||
        status == AnimationStatus.forward;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: IconButton(
          onPressed: () {
            controller.fling(velocity: isPanelVisible ? -1.0 : 1.0);
          },
          icon: AnimatedIcon(
            icon: AnimatedIcons.close_menu,
            progress: controller.view,
          ),
        ),
      ),*/
      body: TwoPanels(
        controller: controller,
      ),
    );
  }
}

class TwoPanels extends StatefulWidget {
  final AnimationController controller;

  const TwoPanels({Key? key, required this.controller}) : super(key: key);

  @override
  _TwoPanelsState createState() => _TwoPanelsState();
}

class _TwoPanelsState extends State<TwoPanels> with TickerProviderStateMixin {
  Animation<RelativeRect> getPanelAnimation(BoxConstraints constraints) {
    return RelativeRectTween(
      end: const RelativeRect.fromLTRB(0.0, 100, 0.0, 0.0),
    ).animate(
      CurvedAnimation(parent: widget.controller, curve: Curves.linear),
    );
  }

  final TextEditingController _searchController = TextEditingController();
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget bothPanels(BuildContext context, BoxConstraints constraints) {
    final ThemeData theme = Theme.of(context);
    return Stack(
      children: <Widget>[
        Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,

            // title: const Text("Backdrop"),
            elevation: 0.0,
            leading: IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black38,
              ),
              onPressed: () {
                z.toggle!();
              },
            ),
            
            
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi, Syed".tr,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 290,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(18),
                        /*boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],*/
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Searce hear'.tr,
                          prefixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      backgroundImage: AssetImage(
                        'assets/profile/blood-bag.png',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),




                Column(
                  children: [
                    Image.asset('assets/profile/img_1.png'),
                    Row(
                      children: [
                        Icon(
                          Icons.do_not_disturb_on_total_silence_rounded,
                          color: Colors.red,
                        ),
                        Text("10 Donor Around 12 KM".tr)
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Lifetime Donation".tr),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "VIEW HISTORY".tr,
                              style: TextStyle(color: Colors.red),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.gite_sharp,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "25 Times".tr,
                          style: TextStyle(fontSize: 23),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          // Your code here
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WALLET'.tr,
                              style: TextStyle(color: Colors.red),
                            ),

                            SizedBox(width: 5),
                            Icon(
                              Icons.account_balance_wallet_outlined,
                              color: Colors.red,
                            )
                            // Add some spacing between the icon and text
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Your code here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('CREATE REQUEST'.tr),

                          SizedBox(width: 5),
                          Icon(Icons.bloodtype_outlined),
                          // Add some spacing between the icon and text
                        ],
                      ),
                    ),
                  ],
                ),
              ],
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
                label: 'Home'.tr,
                // backgroundColor: Colors.red,
              ),





              BottomNavigationBarItem(
                icon: InkWell(
                    onTap: () => Get.toNamed(notification),
                    child: Icon(
                      Icons.notifications_none,
                      color: Colors.black38,
                    )),
                label: 'Notification'.tr,
                // backgroundColor: Colors.purple,
              ),

              BottomNavigationBarItem(
                icon: InkWell(
                    onTap: () => Get.toNamed(massages),
                    child: Icon(
                      Icons.sms_outlined,
                      color: Colors.black38,
                    )),
                label: 'Business'.tr,
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
                label: 'Profile'.tr,
                // backgroundColor: Colors.pink,
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black38,
            onTap: _onItemTapped,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: bothPanels,
    );
  }
}
