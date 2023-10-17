import 'package:blood_apps/authentication/forgot_password.dart';
import 'package:blood_apps/authentication/login/login.dart';
import 'package:blood_apps/authentication/sign_in.dart';
import 'package:blood_apps/landingPage/exampol.dart';
import 'package:blood_apps/landingPage/views/landing_page.dart';
import 'package:blood_apps/pages/blood_request/blood_request_list.dart';
import 'package:blood_apps/pages/blood_request/view/accepted_donors.dart';
import 'package:blood_apps/pages/menu_pages/hospital_list.dart';
import 'package:blood_apps/pages/profile/views/profile.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../authentication/sign_up/views/sign_up.dart';
import '../languages/button.dart';
import '../onbording/new_onbording.dart';
import '../pages/blood_request/create_blood_request.dart';
import '../pages/home/home.dart';
import '../pages/menu_pages/components/hospital/hospital_view.dart';
import '../pages/menu_pages/my_request_list.dart';
import '../pages/menu_pages/university_list.dart';
import '../pages/message/messages.dart';
import '../pages/notification/notification.dart';
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
const String bloodRequest = '/blood-Request';
const String requestList = '/request-list';
const String myRequestList = '/my-request-list';
const String requestDetails = '/RequestDetails';
const String onbordings = '/Onbordings';
const String notification = '/NotifiCation';
const String button = '/Button';
const String universityList = '/university-list';
const String hospitalList = '/hospital-list';
const String hospitalView = '/hospital-view';
const String acceptedDonors = '/accepted-donors';

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
    page: () => const LogIn(),
  ),
  GetPage(
    name: signup,
    page: () => SignUp(),
  ),
  GetPage(
    name: signin,
    page: () => const SignIn(),
  ),
  GetPage(
    name: forgotpassword,
    page: () => const ForgotPassword(),
  ),
  GetPage(
    name: profile,
    page: () => const Profile(),
  ),
  GetPage(
    name: home,
    page: () => const Home(),
  ),
  GetPage(
    name: exampol,
    page: () => const Exampol(),
  ),
  //GetPage(name: sms, page: () => sms(),),
  GetPage(
    name: massages,
    page: () => const Massages(),
  ),
  GetPage(
    name: bloodRequest,
    page: () => const CreateBloodRequest(),
  ),
  GetPage(
    name: onbordings,
    page: () => Onbordings(),
  ),
  GetPage(
    name: notification,
    page: () => const NotifiCation(),
  ),
  GetPage(
    name: button,
    page: () => const Button(),
  ),
  GetPage(
    name: universityList,
    page: () => const UniversityList(),
  ),
  GetPage(
    name: hospitalList,
    page: () => const HospitalList(),
  ),
  GetPage(
    name: hospitalView,
    page: () => const HospitalView(),
  ),
  GetPage(
    name: myRequestList,
    page: () => const MyRequestList(),
  ),
  GetPage(
    name: requestList,
    page: () => const BloodRequestList(),
  ),
  GetPage(
    name: acceptedDonors,
    page: () => const DonorProfiles(),
  ),
];
