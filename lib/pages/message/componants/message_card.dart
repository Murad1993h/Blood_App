import 'package:blood_apps/helpers/app_colors.dart';
import 'package:blood_apps/helpers/app_spaces.dart';
import 'package:flutter/material.dart';

class MessageCard extends StatefulWidget {
  final int? index;

  const MessageCard({Key? key, this.index}) : super(key: key);

  @override
  State<MessageCard> createState() => _MessageCardState();
}

class _MessageCardState extends State<MessageCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withOpacity(.05),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.black12,
                radius: 25,
                child: Image.asset(
                  'assets/icon/app_icons/user.png',
                  height: 30,
                  width: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "User Name ${widget.index}",
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        AppSpaces.spaces_width_10,
                        const Text(
                          "15 min ago",
                          style: TextStyle(color: Colors.black26, fontSize: 10),
                        ),
                      ],
                    ),
                    const Text(
                      "Looks good!",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
