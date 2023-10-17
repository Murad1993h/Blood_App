import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../ignore/private_info.dart';
import '../models/TextModel.dart';
import '../views/widgets/headers.dart';

class ChatTextController extends GetxController {
  //TODO: Implement ChatTextController

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  RxList choicesList = [].obs;

  var state = ApiState.notFound.obs;

  getTextCompletion(String query) async {
    addMyMessage();

    state.value = ApiState.loading;

    try {
      Map<String, dynamic> rowParams = {
        "model": "gpt-3.5-turbo",
        "messages": [
          {
            "role": "user",
            "content": query,
          }
        ],
        "temperature": 1,
        "max_tokens": 512,
        "top_p": 1,
        "temperature": 0.5,
        "frequency_penalty": 0,
        "presence_penalty": 0
      };
      // Map<String, String> rowParams = {
      //   // "model": "text-davinci-003",
      //   "model": "gpt-3.5-turbo-0301",
      //   "message": query,
      // };

      final encodedParams = json.encode(rowParams);

      // print('Request Body'+ encodedParams);
      final response = await http.post(
        // Uri.parse(endPoint("completions")),
        Uri.parse(endPoint("chat/completions")),
        body: encodedParams,
        headers: headerBearerOption(openAIKey),
      );
      var b = json.decode(response.body);
      if (b['object'] == 'chat.completion') {
        // messages =
        //     TextCompletionModel.fromJson(json.decode(response.body)).choices;
        //

        print("Response  body     $b");
        addServerMessage(TextModel.fromJson(json.decode(response.body)).choices!);
        // addServerMessage(
        //     TextCompletionModel.fromJson(json.decode(response.body)).choices);
        state.value = ApiState.success;
      } else {
        // throw ServerException(message: "Image Generation Server Exception");
        state.value = ApiState.error;
      }
    } catch (e) {
      print("Errorrrrrrrrrrrrrrr  ");
    } finally {
      searchTextController.clear();
      update();
    }
  }

  addServerMessage(List<Choices> choices) {
    Choices text = Choices(
      message: Message(
        role: "assistant",
        content: choices[0].message!.content,
      ),
    );
    choicesList.add(text);

    print("choices     ${choicesList.length}");
    // for (int i = 0; i < choices.length; i++) {

    // choices.insert(1, choices[0]);
    // }
    update();
  }

  addMyMessage() {
    // {"text":":\n\nWell, there are a few things that you can do to increase","index":0,"logprobs":null,"finish_reason":"length"}
    Choices text = Choices(
      message: Message(
        role: "user",
        content: searchTextController.text,
      ),
    );
    // TextCompletionData text = TextCompletionData(
    //     text: searchTextController.text, index: -999999, finish_reason: "");
    // choices.insert(0, text);
    choicesList.add(text);
    update();
  }

  TextEditingController searchTextController = TextEditingController();
}
