import 'package:blood_apps/authentication/controllers/authController.dart';
import 'package:blood_apps/languages.dart';
import 'package:blood_apps/pages/home/controllers/home_controller.dart';
import 'package:blood_apps/pages/profile/controllers/profile_controller.dart';
import 'package:blood_apps/route/route.dart';
import 'package:blood_apps/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'pages/blood_request/controller/blood_requeat_controller.dart';

late final SharedPreferences? prefs;

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => ProfileController()),
    ChangeNotifierProvider(create: (_) => AuthController()),
    ChangeNotifierProvider(create: (_) => HomeController()),
    ChangeNotifierProvider(create: (_) => BloodRequestController()),
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  void initState() {
    // TODO: implement initState
    setPreference();
    super.initState();
  }

  setPreference() async {
    await SharedPreferences.getInstance().then((pr) {
      prefs = pr;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      //title: AppString.appName,
      theme: ThemeData(
        primarySwatch:  Colors.red,
        textTheme: GoogleFonts.josefinSansTextTheme(
          Theme.of(context).textTheme.apply(),
        ),
        // scaffoldBackgroundColor: AppColors.scaffoldColor
      ),
      initialRoute: splash,
      getPages: getPages,
      home: SplashScreen(),
    );
  }
}
