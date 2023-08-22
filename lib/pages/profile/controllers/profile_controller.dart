import 'dart:convert';

import 'package:blood_apps/pages/profile/models/GroupModel.dart';
import 'package:blood_apps/pages/profile/models/HospitalModel.dart';
import 'package:blood_apps/pages/profile/models/LocationModel.dart';
import 'package:flutter/material.dart';

import '../../../helpers/networkHelper/base_client.dart';
import '../../../helpers/urls.dart';

class ProfileController extends ChangeNotifier {
  LocationModel? locationModel;
  HospitalModel? hospitalModel;
  GroupModel? groupModel;

  Future<List?> getLocations() async {
    locationModel = null;
    final response = await BaseClient().get(api_main_url, "location");

    var data = json.decode(response);

    locationModel = LocationModel.fromJson(data);

    notifyListeners();
  }

  Future<List?> getHospital() async {
    hospitalModel = null;
    final response = await BaseClient().get(api_main_url, "hospital-list");

    var data = json.decode(response);

    hospitalModel = HospitalModel.fromJson({"data": data});

    notifyListeners();
  }

  Future<List?> getGroupList() async {
    groupModel = null;
    final response = await BaseClient().get(api_main_url, "group-list");

    var data = json.decode(response);

    groupModel = GroupModel.fromJson({"data": data});

    notifyListeners();
  }
}
