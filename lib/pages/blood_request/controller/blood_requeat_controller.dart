import 'dart:convert';
import 'dart:io';

import 'package:another_flushbar/flushbar.dart';
import 'package:blood_apps/main.dart';
import 'package:blood_apps/pages/blood_request/models/MyRequestListModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sslcommerz/model/SSLCSdkType.dart';
import 'package:flutter_sslcommerz/model/SSLCTransactionInfoModel.dart';
import 'package:flutter_sslcommerz/model/SSLCommerzInitialization.dart';
import 'package:flutter_sslcommerz/model/SSLCurrencyType.dart';
import 'package:flutter_sslcommerz/sslcommerz.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../helpers/dialogue/loading_dialogue.dart';
import '../../../helpers/networkHelper/base_client.dart';
import '../../../helpers/urls.dart';
import '../models/MyResponseModel.dart';
import '../models/RunningBloodRequestModel.dart';

class BloodRequestController extends ChangeNotifier {
  RunningBloodRequestModel? runningBloodRequestModel;
  MyResponseModel? myResponseModel;
  MyRequestListModel? myRequestListModel;

  Future<List?> getRunningRequest() async {
    runningBloodRequestModel = null;
    final response = await BaseClient().get(api_main_url, "requestList-all");

    var data = json.decode(response);

    debugPrint("Req List: " + data.toString());

    runningBloodRequestModel = RunningBloodRequestModel.fromJson(data);

    notifyListeners();
  }

  Future<List?> getMyResponseRequest(String userId) async {
    myResponseModel = null;
    final response = await BaseClient().get(api_main_url, "blood-request/response-list-own/$userId");

    var data = json.decode(response);

    myResponseModel = MyResponseModel.fromJson(data);

    notifyListeners();
  }

  Future<List?> getMyRequests() async {
    myRequestListModel = null;
    final response = await BaseClient().get(api_main_url, "requestList-personal");

    var data = json.decode(response);

    myRequestListModel = MyRequestListModel.fromJson(data);

    notifyListeners();
  }

  Future<void> sslCommerzGeneralCall(double? amount, String transactionId) async {
    Sslcommerz sslcommerz = Sslcommerz(
      initializer: SSLCommerzInitialization(
        // ipn_url: "https://sandbox.sslcommerz.com/gwprocess/v3/api.php",
        // multi_card_name: formData['multicard'],
        currency: SSLCurrencyType.BDT,
        product_category: "Food",
        sdkType: SSLCSdkType.TESTBOX,
        store_id: "geoor650550b5d9ab5",
        store_passwd: "geoor650550b5d9ab5@ssl",
        total_amount: amount!,
        tran_id: transactionId,
      ),
    );
    try {
      SSLCTransactionInfoModel result = await sslcommerz.payNow();

      if (result.status!.toLowerCase() == "failed") {
        Fluttertoast.showToast(
          msg: "Transaction is Failed....",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      } else if (result.status!.toLowerCase() == "closed") {
        Fluttertoast.showToast(
          msg: "SDK Closed by User",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      } else {
        var body = {
          "cus_name": "MrMostafiz",
          "cus_email": "mr.mos@gmail.com",
          "cus_add1": "43",
          "total_amount": 100,
          'tran_id': result.tranId,
          'val_id': result.valId,
          'amount': result.amount,
          'card_type': result.cardType,
          'store_amount': result.storeAmount,
          'card_no': result.cardNo,
          'bank_tran_id': result.bankTranId,
          'status': result.status,
          'tran_date': result.tranDate,
          'currency': 'BDT',
          'card_issuer': result.cardIssuer,
          'card_brand': result.cardBrand,
          'card_issuer_country': result.cardIssuerCountry,
          'card_issuer_country_code': result.cardIssuerCountryCode,
          'store_id': result.storeAmount,
          'verify_sign': '',
          'verify_key': '',
          'cus_fax': '',
          'verify_sign_sha2': '',
          'currency_type': result.currencyType,
          'currency_amount': result.currencyAmount,
          'currency_rate': result.currencyRate,
          'base_fair': '',
          "value_a": result.valueA,
          'value_b': result.valueB,
          'value_c': result.valueC,
          "value_d": result.valueD,
          'risk_level': result.riskLevel,
          'risk_title': result.riskTitle,
          'error': '',
          'key': '',
          'pass': '',
        };

        successRequest(
          Get.overlayContext!,
          body,
        );

        Fluttertoast.showToast(
            msg: "Transaction is ${result.status} and Amount is ${result.amount}",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.black,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future createBloodRequest(
    BuildContext context,
    var body,
    double? amount,
    var transactionId,
  ) async {
    // showDialog(context: context, barrierDismissible: false, builder: (_) : new LiquidCustomProgressIndicatorPage());

    final response = await http.post(Uri.parse('${api_main_url}request-store'), body: json.encode(body), headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.acceptHeader: 'application/json',
    });

    var x = json.decode(response.body);
    debugPrint(x.toString());

    Map<String, dynamic> js = x;

    if (response.statusCode == 200 ||
        response.statusCode == 401 ||
        response.statusCode == 403 ||
        response.statusCode == 500 ||
        response.statusCode == 201) {
      try {
        if (response.statusCode == 200) {
          Get.back();

          sslCommerzGeneralCall(amount, transactionId);

          getRunningRequest();
          getMyResponseRequest(prefs!.getString('userId').toString());
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

  Future acceptRequest(
    BuildContext context,
    var body,
  ) async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const LoadingDialogue(
              title: 'Loading',
              image: 'assets/icon/leaf.png',
            ));
    final response = await http.post(Uri.parse('${api_main_url}blood-request/apply'), body: json.encode(body), headers: {
      'Authorization': 'Bearer ${prefs!.getString("token")}' ?? '',
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.acceptHeader: 'application/json',
    });

    debugPrint("Success: $body");
    var x = json.decode(response.body);

    Map<String, dynamic> js = x;

    debugPrint("Success: $js");
    if (response.statusCode == 200 ||
        response.statusCode == 401 ||
        response.statusCode == 403 ||
        response.statusCode == 500 ||
        response.statusCode == 201) {
      try {
        if (response.statusCode == 200) {
          Get.back();
          getRunningRequest();
          getMyResponseRequest(prefs!.getString('userId').toString());
          Flushbar(
              flushbarPosition: FlushbarPosition.BOTTOM,
              isDismissible: false,
              duration: const Duration(seconds: 3),
              messageText: const Text(
                "Accepted Succesfully",
                style: TextStyle(fontSize: 16.0, color: Colors.green),
              )).show(context);
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

  Future successRequest(
    BuildContext context,
    var body,
  ) async {
    // showDialog(context: context, barrierDismissible: false, builder: (_) : new LiquidCustomProgressIndicatorPage());

    final response = await http.post(Uri.parse('${api_main_url}request-store/payment/success'), body: json.encode(body), headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.acceptHeader: 'application/json',
    });
    var x = json.decode(response.body);

    Map<String, dynamic> js = x;

    debugPrint("Success Payment $x");

    if (response.statusCode == 200 ||
        response.statusCode == 401 ||
        response.statusCode == 403 ||
        response.statusCode == 500 ||
        response.statusCode == 201) {
      try {
        if (response.statusCode == 200) {
          // Get.back();

          getRunningRequest();
          getMyResponseRequest(prefs!.getString('userId').toString());
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
        // Navigator.of(context).pop();
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

  Future acceptRejectDonor(
    BuildContext context,
    var body,
  ) async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const LoadingDialogue(
              title: 'Loading',
              image: 'assets/icon/leaf.png',
            ));
    final response = await http.post(Uri.parse('${api_main_url}blood-request/accept'), body: json.encode(body), headers: {
      'Authorization': 'Bearer ${prefs!.getString("token")}' ?? '',
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.acceptHeader: 'application/json',
    });

    debugPrint("Success: $body");
    var x = json.decode(response.body);

    Map<String, dynamic> js = x;

    debugPrint("Success: $js");
    if (response.statusCode == 200 ||
        response.statusCode == 401 ||
        response.statusCode == 403 ||
        response.statusCode == 500 ||
        response.statusCode == 201) {
      try {
        if (response.statusCode == 200) {
          Get.back();
          Flushbar(
              flushbarPosition: FlushbarPosition.BOTTOM,
              isDismissible: false,
              duration: const Duration(seconds: 3),
              messageText: const Text(
                "Accepted Succesfully",
                style: TextStyle(fontSize: 16.0, color: Colors.green),
              )).show(context);
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
