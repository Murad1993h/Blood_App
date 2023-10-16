// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'dart:io';

import 'package:another_flushbar/flushbar.dart';
import 'package:blood_apps/authentication/models/AuthUserModel.dart';
import 'package:blood_apps/helpers/networkHelper/base_controller.dart';
import 'package:blood_apps/helpers/urls.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../main.dart';
import '../../route/route.dart';

class AuthController extends ChangeNotifier with BaseController {
  AuthUserModel? authUserModel;

  Future registration(
    BuildContext context,
    var body,
  ) async {
    // showDialog(context: context, barrierDismissible: false, builder: (_) => new LiquidCustomProgressIndicatorPage());

    print(body);

    final response = await http.post(Uri.parse('${api_main_url}registration'), body: json.encode(body), headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.acceptHeader: 'application/json',
    });
    print(response.body.toString());
    var x = json.decode(response.body);

    if (response.statusCode == 200 ||
        response.statusCode == 401 ||
        response.statusCode == 403 ||
        response.statusCode == 500 ||
        response.statusCode == 201) {
      try {
        Map<String, dynamic> js = x;
        if (js.containsKey('user_id')) {
          Flushbar(
              flushbarPosition: FlushbarPosition.BOTTOM,
              isDismissible: false,
              duration: const Duration(seconds: 3),
              messageText: const Text(
                "Registration Successful",
                style: TextStyle(fontSize: 16.0, color: Colors.green),
              )).show(context);
          Get.toNamed(login);
        } else {
          Navigator.of(context).pop();

          Flushbar(
              flushbarPosition: FlushbarPosition.BOTTOM,
              isDismissible: false,
              duration: const Duration(seconds: 3),
              messageText: const Text(
                "Invalid Information",
                style: TextStyle(fontSize: 16.0, color: Colors.green),
              )).show(context);
        }
      } catch (e) {
        Navigator.of(context).pop();
        Flushbar(
            flushbarPosition: FlushbarPosition.BOTTOM,
            isDismissible: false,
            duration: const Duration(seconds: 3),
            messageText: const Text(
              "Something went wrong",
              style: TextStyle(fontSize: 16.0, color: Colors.green),
            )).show(context);
      }
    } else {
      Navigator.of(context).pop();
      Flushbar(
          flushbarPosition: FlushbarPosition.BOTTOM,
          isDismissible: false,
          duration: const Duration(seconds: 3),
          messageText: const Text(
            "Registration Failed",
            style: TextStyle(fontSize: 16.0, color: Colors.green),
          )).show(context);
    }
    notifyListeners();
  }

  Future logIn(BuildContext context, var body, {bool? requestAgain = false}) async {
    // showDialog(context: context, barrierDismissible: false, builder: (_) => new LiquidCustomProgressIndicatorPage());

    final response = await http.post(Uri.parse('${api_main_url}login'), body: json.encode(body), headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.acceptHeader: 'application/json',
    });
    var x = json.decode(response.body);

    debugPrint(response.statusCode.toString() + x.toString());

    Map<String, dynamic> js = x;

    debugPrint("LogIn: $js");

    if (response.statusCode == 200 ||
        response.statusCode == 401 ||
        response.statusCode == 403 ||
        response.statusCode == 500 ||
        response.statusCode == 201) {
      try {
        prefs!.setBool('guestLogIn', false);
        prefs!.setBool('isLogin', true);
        prefs!.setString('token', js['token']);
        prefs!.setString('userName', js['user'][0]['name']);
        prefs!.setString('userEmail', body['email']);
        prefs!.setString('userPassword', body['password']);
        prefs!.setString('userId', js['user'][0]['id'].toString());
        prefs!.setString('donorId', js['user'][0]['donor_id']);

        if (response.statusCode == 200) {
          if (requestAgain == false) {
            Flushbar(
                flushbarPosition: FlushbarPosition.BOTTOM,
                isDismissible: false,
                duration: const Duration(seconds: 3),
                messageText: const Text(
                  "Login Successful",
                  style: TextStyle(fontSize: 16.0, color: Colors.green),
                )).show(context);
          }
          Get.toNamed(landing);
        } else {
          // Navigator.of(context).pop();

          Flushbar(
              flushbarPosition: FlushbarPosition.BOTTOM,
              isDismissible: false,
              duration: const Duration(seconds: 3),
              messageText: const Text(
                "Invalid Information",
                style: TextStyle(fontSize: 16.0, color: Colors.green),
              )).show(context);
        }
      } catch (e) {
        Navigator.of(context).pop();
        Flushbar(
            flushbarPosition: FlushbarPosition.BOTTOM,
            isDismissible: false,
            duration: const Duration(seconds: 3),
            messageText: const Text(
              "Something went wrong",
              style: TextStyle(fontSize: 16.0, color: Colors.green),
            )).show(context);
      }
    } else {
      Navigator.of(context).pop();
      Flushbar(
          flushbarPosition: FlushbarPosition.BOTTOM,
          isDismissible: false,
          duration: const Duration(seconds: 3),
          messageText: const Text(
            "Registration Failed",
            style: TextStyle(fontSize: 16.0, color: Colors.green),
          )).show(context);
    }
    notifyListeners();
  }
}
