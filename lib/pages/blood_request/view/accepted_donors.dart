import 'package:blood_apps/helpers/app_colors.dart';
import 'package:blood_apps/pages/blood_request/controller/blood_requeat_controller.dart';
import 'package:blood_apps/pages/blood_request/models/MyRequestListModel.dart';
import 'package:blood_apps/pages/blood_request/view/components/accepted_donor_card.dart';
import 'package:blood_apps/pages/profile/controllers/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class DonorProfiles extends StatefulWidget {
  const DonorProfiles({Key? key}) : super(key: key);

  @override
  State<DonorProfiles> createState() => _DonorProfilesState();
}

class _DonorProfilesState extends State<DonorProfiles> {
  List<RequestResponse>? requestResponse = Get.arguments;

  BloodRequestController? bloodRequestController;

  @override
  void initState() {
    // TODO: implement initState

    bloodRequestController = Provider.of<BloodRequestController>(context, listen: false);
    super.initState();
  }

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
          'Accepted Donors',
          style: TextStyle(
            fontSize: 18,
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: requestResponse!.length,
          itemBuilder: (context, index) {
            return Consumer<ProfileController>(builder: (context, data, child) {
              return AcceptedDonorCard(
                donorDetails: data.userListModel!.userList!
                    .firstWhere(
                      (element) => element.donorId == requestResponse![index].donorId,
                    )
                    .donorDetails,
                requestResponse: requestResponse![index],
                acceptTap: () {
                  var body = {
                    "id": requestResponse![index].id,
                    "status": 1,
                  };

                  bloodRequestController!.acceptRejectDonor(
                    context,
                    body,
                  );
                },
                cancelTap: () {
                  var body = {
                    "id": requestResponse![index].id,
                    "status": 0,
                  };
                  setState(() {});

                  bloodRequestController!.acceptRejectDonor(
                    context,
                    body,
                  );
                },
              );
            });
          }),
    );
  }
}
