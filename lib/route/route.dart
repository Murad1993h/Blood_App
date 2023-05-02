import 'package:blood_apps/authentication/forgot_password.dart';
import 'package:blood_apps/authentication/login/login.dart';
import 'package:blood_apps/authentication/sign_in.dart';
//import 'package:blood_apps/authentication/signup_reg/sign_up.dart';
import 'package:blood_apps/authentication/signup_up.dart';
import 'package:blood_apps/homepage/blood_request/blood_requet.dart';
import 'package:blood_apps/homepage/blood_request/request_details/request_details.dart';
import 'package:blood_apps/homepage/exampol.dart';
import 'package:blood_apps/homepage/message/messagees.dart';
import 'package:blood_apps/homepage/notification/notification.dart';
//import 'package:blood_apps/onbording/bording.dart';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../authentication/signup_up/sign_up.dart';
import '../homepage/blood_request/request/request.dart';
import '../homepage/home.dart';
import '../homepage/profile/profile.dart';
import '../onbording/new_onbording.dart';
//import '../onbording/onbording_screen.dart';
import '../splash/splash_screen.dart';


const String splash = '/splash-screen';
const String onbording = '/onbording-screen';
const String bording = '/bording';
const String login = '/login';
const String signup = '/signup';
const String signin = '/signin';
const String signupup = '/Signup-Up';
const String forgotpassword = '/Forgot-Password';
const String profile = '/Profile';
const String home = '/Home';
const String exampol = '/Exampol';
const String sms = '/Sma';
const String massages = '/Massages';
const String bloodrequest = '/Blood-Request';
const String request = '/Request';
const String requestdetails = '/RequestDetalies';
const String onbordings = '/Onbordings';
const String notification = '/NotifiCation';





List<GetPage> getPages = [
  GetPage(
    name: splash,
    page: () => SplashScreen(),
  ),


 // GetPage(name: onbording, page: () => OnboardingScreen(),),
  //GetPage(name: bording, page: () => Bording(),),
  GetPage(name: login, page: () => LogIn(),),
  GetPage(name: signup, page: () => SignUp(),),
  GetPage(name: signin, page: () => SignIn(),),
  GetPage(name: signupup, page: () => SignupUp(),),
  GetPage(name: forgotpassword, page: () => ForgotPassword(),),
  GetPage(name: profile, page: () => Profile(),),
  GetPage(name: home, page: () => Home(),),
  GetPage(name: exampol, page: () => Exampol(),),
  //GetPage(name: sms, page: () => sms(),),
  GetPage(name: massages, page: () => Massages(),),
  GetPage(name:bloodrequest, page: () => BloodRequest(),),
  GetPage(name:request, page: () => Request(),),
  GetPage(name:requestdetails, page: () => RequestDatails(),),
  GetPage(name: onbordings, page: () =>  Onbordings(),),
  GetPage(name: notification, page: () =>  NotifiCation(),),






];

