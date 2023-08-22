import 'package:blood_apps/languages.dart';
import 'package:blood_apps/pages/profile/controllers/profile_controller.dart';
import 'package:blood_apps/route/route.dart';
import 'package:blood_apps/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => ProfileController()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      //title: AppString.appName,
      theme: ThemeData(
        //primarySwatch:  Colors.cyan,
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
