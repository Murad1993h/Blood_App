import 'dart:convert';

import 'package:blood_apps/pages/home/models/SliderModel.dart';
import 'package:flutter/material.dart';

import '../../../helpers/networkHelper/base_client.dart';
import '../../../helpers/urls.dart';

class HomeController extends ChangeNotifier {
  SliderModel? sliderModel;

  Future<List?> getSliders() async {
    sliderModel = null;
    final response = await BaseClient().get(api_main_url, "slider");

    var data = json.decode(response);

    sliderModel = SliderModel.fromJson(data);

    notifyListeners();
  }
}
