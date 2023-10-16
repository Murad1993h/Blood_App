import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../helpers/app_colors.dart';
import '../../../../helpers/app_spaces.dart';

class MessageCard extends StatefulWidget {
  final String? message;
  final String? messageFrom;
  final String? messageTime;
  final String? userImage;

  const MessageCard({Key? key, this.messageFrom, this.message, this.messageTime, this.userImage}) : super(key: key);

  @override
  State<MessageCard> createState() => _MessageCardState();
}

class _MessageCardState extends State<MessageCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      alignment: widget.messageFrom == 'user' ? Alignment.centerRight : Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 4.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: widget.messageFrom == 'user' ? MainAxisAlignment.end : MainAxisAlignment.start,
              children: [
                widget.messageFrom == 'user'
                    ? Container()
                    : Container(
                        height: 25,
                        width: 25,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: CachedNetworkImage(
                          fit: BoxFit.fill,
                          imageUrl: widget.userImage.toString(),
                          // placeholder: (context, url) => Center(
                          //   child: LoadingAnimationWidget.staggeredDotsWave(
                          //     color: AppColors.primaryColor,
                          //     size: 20,
                          //   ),
                          // ),
                          errorWidget: (context, url, error) => Image.asset(
                            "assets/images/empty_image.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                AppSpaces.spaces_width_5,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ///Text
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: Get.width * .8,
                      ),
                      decoration: BoxDecoration(
                        color: widget.messageFrom == 'user' ? AppColors.primaryColor.withOpacity(.2) : AppColors.white,
                        border: widget.messageFrom == 'user' ? null : Border.all(color: AppColors.black12),
                        borderRadius: widget.messageFrom == 'user'
                            ? const BorderRadius.only(
                                topLeft: Radius.circular(5.0),
                                bottomLeft: Radius.circular(5.0),
                              )
                            : const BorderRadius.only(
                                topRight: Radius.circular(5.0),
                                bottomRight: Radius.circular(5.0),
                              ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 5.0),
                        child: Text(
                          widget.message.toString(),
                          style: TextStyle(color: AppColors.black, fontSize: 14),
                        ),
                      ),
                    ),
                    AppSpaces.spaces_height_2,
                    Text(
                      widget.messageTime.toString(),
                      style: TextStyle(color: AppColors.black26, fontSize: 10),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
