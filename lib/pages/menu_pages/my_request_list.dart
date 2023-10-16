import 'package:blood_apps/pages/blood_request/controller/blood_requeat_controller.dart';
import 'package:blood_apps/pages/menu_pages/components/blood_request/applied_blood_request_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../helpers/app_colors.dart';
import '../../route/route.dart';
import 'components/blood_request/requested_blood_request_card.dart';

class MyRequestList extends StatefulWidget {
  const MyRequestList({Key? key}) : super(key: key);

  @override
  State<MyRequestList> createState() => _MyRequestListState();
}

class _MyRequestListState extends State<MyRequestList> {
  List<Tab> tabs = [
    const Tab(child: Text('Donate Requests')),
    const Tab(child: Text('Requested by Me')),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: AppColors.primaryColor,
          ),
          backgroundColor: AppColors.white,
          elevation: 1.0,
          centerTitle: true,
          title: Text(
            'Request list'.tr,
            style: TextStyle(
              fontSize: 18,
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TabBar(
                unselectedLabelColor: AppColors.primaryColor,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(5),
                  backgroundBlendMode: BlendMode.modulate,
                ),
                tabs: tabs,
              ),
            ),
            Expanded(
              child: Consumer<BloodRequestController>(builder: (context, bloodData, child) {
                return TabBarView(
                  children: [
                    bloodData.myResponseModel != null
                        ? ListView.builder(
                            shrinkWrap: true,
                            itemCount: bloodData.myResponseModel!.data!.length,
                            itemBuilder: (context, index) {
                              return AppliedBloodRequestCard(
                                myResponseData: bloodData.myResponseModel!.data![index],
                                onTap: () {},
                              );
                            })
                        : Container(),
                    bloodData.myRequestListModel != null
                        ? ListView.builder(
                            shrinkWrap: true,
                            itemCount: bloodData.myRequestListModel!.requestList!.length,
                            itemBuilder: (context, index) {
                              return RequestedBloodRequestCard(
                                requestList: bloodData.myRequestListModel!.requestList![index],
                                onTap: () {
                                  Get.toNamed(
                                    acceptedDonors,
                                    arguments: bloodData.myRequestListModel!.requestList![index].requestResponse,
                                  );
                                },
                              );
                            })
                        : Container(),
                  ],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
