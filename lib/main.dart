import 'package:blood_apps/languages.dart';
import 'package:blood_apps/route/route.dart';
import 'package:blood_apps/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(430, 932),
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          translations:Languages (),
          locale: Locale('en', 'US'),
          fallbackLocale: Locale('en', 'US'),
          //title: AppString.appName,
          theme: ThemeData(
            //primarySwatch:  Colors.cyan,
            /*textTheme: GoogleFonts.kanitTextTheme(
                Theme.of(context).textTheme.apply(),
              ),*/
            // scaffoldBackgroundColor: AppColors.scaffoldColor
          ),
          initialRoute: splash,
          getPages:getPages,
          home: SplashScreen(),
        );
      },
    );
  }
}
