import 'package:blood_apps/main.dart';
import 'package:blood_apps/pages/blood_request/controller/blood_requeat_controller.dart';
import 'package:blood_apps/pages/blood_request/view/components/request_card_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../helpers/app_colors.dart';

class BloodRequestList extends StatefulWidget {
  const BloodRequestList({Key? key}) : super(key: key);

  @override
  State<BloodRequestList> createState() => _BloodRequestListState();
}

class _BloodRequestListState extends State<BloodRequestList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Consumer<BloodRequestController>(builder: (context, bloodData, child) {
        return bloodData.runningBloodRequestModel != null
            ? ListView.builder(
                shrinkWrap: true,
                itemCount: bloodData.runningBloodRequestModel!.requestList!.length,
                itemBuilder: (context, index) {
                  return bloodData.runningBloodRequestModel!.requestList![index].requestBy.toString() == prefs!.getString('userId')
                      ? Container()
                      : RequestCardHome(
                          accepted: bloodData.myResponseModel!.data!.where((e) {
                            return e.requestId.toString() == bloodData.runningBloodRequestModel!.requestList![index].id.toString();
                          }).toList(),
                          index: index,
                          runningRequestList: bloodData.runningBloodRequestModel!.requestList![index],
                          onTap: () {
                            var body = {
                              "request_id": bloodData.runningBloodRequestModel!.requestList![index].id,
                              "request_by": bloodData.runningBloodRequestModel!.requestList![index].requestBy,
                              "user": prefs!.getString('userId'),
                              "donor_id": prefs!.getString('donorId'),
                            };
                            bloodData.acceptRequest(context, body);
                          },
                          fromWhere: 'all-list',
                        );
                })
            : Container();
      }),
    );
  }
}
