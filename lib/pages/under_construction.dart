import 'package:blood_apps/helpers/app_colors.dart';
import 'package:flutter/material.dart';

class UnderConstruction extends StatefulWidget {
  const UnderConstruction({Key? key}) : super(key: key);

  @override
  State<UnderConstruction> createState() => _UnderConstructionState();
}

class _UnderConstructionState extends State<UnderConstruction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icon/app_icons/5518819.jpg'),
              Text(
                'We Are Under Construction',
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 26,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
