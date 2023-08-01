import 'package:blood_apps/authentication/forgot_password.dart';
import 'package:blood_apps/authentication/login/login.dart';
import 'package:blood_apps/authentication/sign_in.dart';
import 'package:blood_apps/authentication/signup_up.dart';
import 'package:blood_apps/landingPage/blood_request/blood_requet.dart';
import 'package:blood_apps/landingPage/blood_request/request_details/request_details.dart';
import 'package:blood_apps/landingPage/exampol.dart';
import 'package:blood_apps/landingPage/landing_page.dart';
import 'package:blood_apps/landingPage/message/messages.dart';
import 'package:blood_apps/landingPage/notification/notification.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../authentication/signup_up/sign_up.dart';
import '../landingPage/blood_request/request/request.dart';
import '../landingPage/home.dart';
import '../landingPage/profile/profile.dart';
import '../languages/button.dart';
import '../onbording/new_onbording.dart';
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
const String landing = '/Landing';
const String exampol = '/Exampol';
const String sms = '/Sma';
const String massages = '/Massages';
const String bloodrequest = '/Blood-Request';
const String request = '/Request';
const String requestdetails = '/RequestDetalies';
const String onbordings = '/Onbordings';
const String notification = '/NotifiCation';
const String button = '/Button';

List<GetPage> getPages = [
  GetPage(
    name: splash,
    page: () => SplashScreen(),
  ),
  GetPage(
    name: landing,
    page: () => LandingPage(),
  ),

  GetPage(
    name: login,
    page: () => LogIn(),
  ),
  GetPage(
    name: signup,
    page: () => SignUp(),
  ),
  GetPage(
    name: signin,
    page: () => SignIn(),
  ),
  GetPage(
    name: signupup,
    page: () => SignupUp(),
  ),
  GetPage(
    name: forgotpassword,
    page: () => ForgotPassword(),
  ),
  GetPage(
    name: profile,
    page: () => Profile(),
  ),
  GetPage(
    name: home,
    page: () => Home(),
  ),
  GetPage(
    name: exampol,
    page: () => Exampol(),
  ),
  //GetPage(name: sms, page: () => sms(),),
  GetPage(
    name: massages,
    page: () => Massages(),
  ),
  GetPage(
    name: bloodrequest,
    page: () => BloodRequest(),
  ),
  GetPage(
    name: request,
    page: () => Request(),
  ),
  GetPage(
    name: requestdetails,
    page: () => RequestDatails(),
  ),
  GetPage(
    name: onbordings,
    page: () => Onbordings(),
  ),
  GetPage(
    name: notification,
    page: () => NotifiCation(),
  ),
  GetPage(
    name: button,
    page: () => Button(),
  ),
];
