import 'package:blood_apps/helpers/app_colors.dart';
import 'package:blood_apps/pages/under_construction.dart';
import 'package:flutter/material.dart';

import '../chat_with_expert/views/chat_text_view.dart';
import 'componants/message_card.dart';

class Massages extends StatefulWidget {
  const Massages({Key? key}) : super(key: key);

  @override
  State<Massages> createState() => _MassagesState();
}

class _MassagesState extends State<Massages> {
  List<Tab> tabs = [
    const Tab(child: Text('Chat With Donor')),
    const Tab(child: Text('Chat With AI Doctor')),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TabBar(
                unselectedLabelColor: AppColors.primaryColor,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.darkGreen,
                      AppColors.primaryColor,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.primaryColor,
                ),
                tabs: tabs,
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  UnderConstruction(),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: ListView.builder(
                  //       shrinkWrap: true,
                  //       itemCount: 10,
                  //       itemBuilder: (context, index) {
                  //         return MessageCard(
                  //           index: index,
                  //         );
                  //       }),
                  // ),
                  ChatWithExpert(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
