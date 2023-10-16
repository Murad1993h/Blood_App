import 'package:blood_apps/pages/chat_with_expert/views/widgets/message_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/chat_text_controller.dart';
import 'widgets/headers.dart';
import 'widgets/search_text_field_widget.dart';

class ChatWithExpert extends GetView<ChatTextController> {
  const ChatWithExpert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ChatTextController());
    return Obx(
      () => Column(children: [
        Expanded(
          child: ListView.builder(
            reverse: false,
            itemCount: controller.choicesList.length,
            itemBuilder: (BuildContext context, int index) {
              return MessageCard(
                message: controller.choicesList[index].message!.content,
                messageFrom: controller.choicesList[index].message!.role,
                messageTime: '4.35 PM',
                userImage:
                    'https://serviceapp.sgp1.digitaloceanspaces.com/public/images/MB%20Studio/products/small/6419384e7901dec074e20ac7dbe4298bb4cc09fc1d065.jpg',
              );
            },
          ),
        ),
        controller.state.value == ApiState.loading ? const Center(child: CircularProgressIndicator()) : const SizedBox(),

        SearchTextFieldWidget(
            color: Colors.green.withOpacity(0.8),
            textEditingController: controller.searchTextController,
            onTap: () {
              controller.getTextCompletion(controller.searchTextController.text);
            }),
        // const SizedBox(height: 20),
      ]),
    );
  }
}
