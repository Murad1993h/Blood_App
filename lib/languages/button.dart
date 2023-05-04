import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          ElevatedButton(onPressed: () {
            Get.updateLocale(Locale('en', 'US'),);

          }, child: Text("English"),),
          ElevatedButton(onPressed: () {
            Get.updateLocale(Locale('bn', 'BD'),);

          }, child: Text("Bangla"),),

        ],),
      ),
    );
  }
}
