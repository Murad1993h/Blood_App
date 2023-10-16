import 'dart:convert';

import 'package:blood_apps/authentication/models/UserListModel.dart';
import 'package:blood_apps/pages/home/models/SliderModel.dart';
import 'package:blood_apps/pages/profile/models/AchivementModel.dart';
import 'package:blood_apps/pages/profile/models/GroupModel.dart';
import 'package:blood_apps/pages/profile/models/HospitalModel.dart';
import 'package:blood_apps/pages/profile/models/LocationModel.dart';
import 'package:blood_apps/pages/profile/models/ProfileModel.dart';
import 'package:blood_apps/pages/profile/models/UniversityModel.dart';
import 'package:flutter/material.dart';

import '../../../helpers/networkHelper/base_client.dart';
import '../../../helpers/urls.dart';

class ProfileController extends ChangeNotifier {
  LocationModel? locationModel;
  HospitalModel? hospitalModel;
  GroupModel? groupModel;
  UniversityModel? universityModel;
  SliderModel? sliderModel;
  ProfileModel? profileModel;
  UserListModel? userListModel;
  AchivementModel? achivementModel;

  Future<List?> getAchievement() async {
    achivementModel = null;
    final response = await BaseClient().get(api_main_url, "achivement-list");

    var data = json.decode(response);

    achivementModel = AchivementModel.fromJson(data);

    notifyListeners();
  }

  Future<List?> getUsers() async {
    userListModel = null;
    final response = await BaseClient().get(api_main_url, "user-list");

    var data = json.decode(response);

    userListModel = UserListModel.fromJson(data);

    notifyListeners();
  }

  Future<List?> getUserInfo() async {
    profileModel = null;
    final response = await BaseClient().get(api_main_url, "profile");

    var data = json.decode(response);

    profileModel = ProfileModel.fromJson(data);

    notifyListeners();
  }

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
    hospitalModel = HospitalModel.fromJson(data);

    notifyListeners();
  }

  Future<List?> getGroupList() async {
    groupModel = null;
    final response = await BaseClient().get(api_main_url, "group-list");

    var data = json.decode(response);

    groupModel = GroupModel.fromJson(data);

    notifyListeners();
  }

  Future<List?> getUniversityList() async {
    universityModel = null;
    final response = await BaseClient().get(api_main_url, "university-list");

    var data = json.decode(response);

    universityModel = UniversityModel.fromJson(data);

    notifyListeners();
  }

  Future<List?> getSliders() async {
    sliderModel = null;
    final response = await BaseClient().get(api_main_url, "slider");

    var data = json.decode(response);

    sliderModel = SliderModel.fromJson(data);

    notifyListeners();
  }
}
