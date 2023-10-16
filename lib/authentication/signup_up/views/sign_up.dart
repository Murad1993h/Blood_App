import 'package:blood_apps/authentication/controllers/authController.dart';
import 'package:blood_apps/helpers/app_colors.dart';
import 'package:blood_apps/helpers/app_spaces.dart';
import 'package:blood_apps/pages/profile/controllers/profile_controller.dart';
import 'package:blood_apps/route/route.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../helpers/dropdown/dropdown_menu_item.dart';
import '../../../helpers/dropdown/menu_items.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String? askDonation;
  String? askGroup;
  String? workInterest;
  TextEditingController? donationDate = TextEditingController();
  TextEditingController? firstName = TextEditingController();
  TextEditingController? lastName = TextEditingController();
  TextEditingController? emailAddress = TextEditingController();
  TextEditingController? mobile = TextEditingController();

  TextEditingController? gender = TextEditingController(text: '');
  TextEditingController? DoB = TextEditingController();
  TextEditingController? age = TextEditingController();
  TextEditingController? bloodGroup = TextEditingController(text: '');

  num? divisionId = -1;
  num? districtId = -1;
  num? thanaId = -1;
  TextEditingController? division = TextEditingController(text: '');
  TextEditingController? searchDivision = TextEditingController(text: '');
  TextEditingController? district = TextEditingController(text: '');
  TextEditingController? searchDistrict = TextEditingController(text: '');
  TextEditingController? thana = TextEditingController(text: '');

  num? hospitalId = -1;
  num? universityId = -1;
  num? groupId = -1;
  TextEditingController? hospital = TextEditingController(text: '');
  TextEditingController? occupation = TextEditingController(text: '');
  TextEditingController? university = TextEditingController(text: '');
  TextEditingController? group = TextEditingController(text: '');
  TextEditingController? referralID = TextEditingController(text: '');

  AuthController? authController;

  @override
  void initState() {
    donationDate = TextEditingController(text: '');
    authController = Provider.of<AuthController>(context, listen: false);
    super.initState();
  }

  @override
  void dispose() {
    donationDate!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.white,
      ),
      body: Consumer<ProfileController>(builder: (context, profileData, child) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: ListView(
              children: [
                Text(
                  "Create your account".tr,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                AppSpaces.spaces_height_15,

                ///Ask Donation
                Text(
                  "Donating First Time".tr,
                  style: const TextStyle(fontSize: 14),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: RadioListTile(
                        dense: true,
                        title: Text("Yes".tr),
                        value: "yes",
                        groupValue: askDonation,
                        onChanged: (value) {
                          setState(() {
                            askDonation = value.toString();
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                        dense: true,
                        title: Text("No".tr),
                        value: "no",
                        groupValue: askDonation,
                        onChanged: (value) {
                          setState(() {
                            askDonation = value.toString();
                          });
                        },
                      ),
                    ),
                  ],
                ),
                AppSpaces.spaces_height_10,

                ///Donation Date
                askDonation == 'no'
                    ? Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.black12.withOpacity(.03),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: DateTimePicker(
                                  // focusNode: _focusDDateNode,
                                  type: DateTimePickerType.date,
                                  controller: donationDate,
                                  calendarTitle: 'Pick a Date',
                                  textAlign: TextAlign.left,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      borderSide: BorderSide.none,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      borderSide: BorderSide.none,
                                    ),
                                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                                    focusColor: AppColors.primaryColor,
                                    contentPadding: const EdgeInsets.all(8.0),
                                    label: Container(
                                      child: Text(
                                        'Donation date'.tr,
                                        style: const TextStyle(color: Colors.black54, fontSize: 12),
                                      ),
                                    ),
                                    alignLabelWithHint: false,
                                  ),
                                  cursorColor: AppColors.primaryColor,
                                  dateMask: 'dd MMM, yyyy',
                                  // initialValue: DateTime.now().toString(),
                                  // initialValue: 'Last donation date'.tr,
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(2100),
                                  icon: const Icon(Icons.event),
                                  // onChanged: rfqCreateProvider!.setDeliveryDate,
                                  validator: (val) {
                                    donationDate!.text = val!;

                                    return null;
                                  },
                                  //onSaved: (val) => print(val),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(4.0, 0.0, 4.0, 0.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.white,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Image.asset(
                                      'assets/icon/app_icons/calendar.png',
                                      color: AppColors.textColor,
                                      width: 15,
                                      height: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    : Container(),
                AppSpaces.spaces_height_5,
                Row(
                  children: [
                    ///First Name
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.black12.withOpacity(.03),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: TextField(
                            controller: firstName,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide.none,
                              ),
                              // floatingLabelBehavior: FloatingLabelBehavior.auto,
                              focusColor: AppColors.primaryColor,
                              isDense: true,
                              contentPadding: const EdgeInsets.all(8.0),
                              label: Text(
                                'First name'.tr,
                                style: const TextStyle(color: Colors.black54, fontSize: 12),
                              ),
                              // alignLabelWithHint: false,
                            ),
                            onChanged: (value) {
                              print(value);
                              firstName!.text = value;

                              print(firstName!.text);
                              firstName!.selection = TextSelection.fromPosition(
                                TextPosition(offset: firstName!.text.length),
                              );
                            },
                          ),
                        ),
                      ),
                    ),

                    ///Last Name
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.black12.withOpacity(.03),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: TextField(
                            controller: lastName,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide.none,
                              ),
                              floatingLabelBehavior: FloatingLabelBehavior.auto,
                              focusColor: AppColors.primaryColor,
                              isDense: true,
                              contentPadding: const EdgeInsets.all(8.0),
                              label: Text(
                                'Last name'.tr,
                                style: const TextStyle(color: Colors.black54, fontSize: 12),
                              ),
                              alignLabelWithHint: false,
                            ),
                            onChanged: (value) {
                              lastName!.text = value;
                              lastName!.selection = TextSelection.fromPosition(
                                TextPosition(offset: lastName!.text.length),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                AppSpaces.spaces_height_5,
                Row(
                  children: [
                    ///Email Address
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.black12.withOpacity(.03),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: TextField(
                            controller: emailAddress,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide.none,
                              ),
                              floatingLabelBehavior: FloatingLabelBehavior.auto,
                              focusColor: AppColors.primaryColor,
                              isDense: true,
                              contentPadding: const EdgeInsets.all(8.0),
                              label: Text(
                                'Email'.tr,
                                style: const TextStyle(color: Colors.black54, fontSize: 12),
                              ),
                              alignLabelWithHint: false,
                            ),
                            onChanged: (value) {
                              emailAddress!.text = value;
                              emailAddress!.selection = TextSelection.fromPosition(
                                TextPosition(offset: emailAddress!.text.length),
                              );
                            },
                          ),
                        ),
                      ),
                    ),

                    ///Mobile Number
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.black12.withOpacity(.03),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: TextField(
                            controller: mobile,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide.none,
                              ),
                              floatingLabelBehavior: FloatingLabelBehavior.auto,
                              focusColor: AppColors.primaryColor,
                              isDense: true,
                              contentPadding: const EdgeInsets.all(8.0),
                              label: Text(
                                'Mobile'.tr,
                                style: const TextStyle(color: Colors.black54, fontSize: 12),
                              ),
                              alignLabelWithHint: false,
                            ),
                            onChanged: (value) {
                              mobile!.text = value;
                              mobile!.selection = TextSelection.fromPosition(
                                TextPosition(offset: mobile!.text.length),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                AppSpaces.spaces_height_5,
                Row(
                  children: [
                    ///Gender
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            customButton: Container(
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.black12.withOpacity(.05),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    gender!.text == '' ? 'Gender'.tr : gender!.text,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: gender!.text == '' ? AppColors.black45 : AppColors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            items: [
                              ...GenderItems.firstItems.map(
                                (item) => DropdownMenuItem<MenuItem>(
                                  value: item,
                                  child: GenderItems.buildItem(item),
                                ),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                gender!.text = value!.text;
                              });
                            },
                            dropdownStyleData: DropdownStyleData(
                              width: 160,
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: AppColors.primaryColor),

                                // color: AppColors.primaryColor,
                              ),
                              offset: const Offset(0, 8),
                            ),
                            menuItemStyleData: MenuItemStyleData(
                              customHeights: [
                                ...List<double>.filled(GenderItems.firstItems.length, 48),
                              ],
                              padding: const EdgeInsets.only(left: 16, right: 16),
                            ),
                          ),
                        ),
                      ),
                    ),

                    ///Blood Group
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            customButton: Container(
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.black12.withOpacity(.05),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    bloodGroup!.text == '' ? 'Blood group'.tr : bloodGroup!.text,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: bloodGroup!.text == '' ? AppColors.black45 : AppColors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            items: [
                              ...BloodGroupItems.firstItems.map(
                                (item) => DropdownMenuItem<MenuItem>(
                                  value: item,
                                  child: BloodGroupItems.buildItem(item),
                                ),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                bloodGroup!.text = value!.text;
                              });
                            },
                            dropdownStyleData: DropdownStyleData(
                              width: 160,
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: AppColors.primaryColor),

                                // color: AppColors.primaryColor,
                              ),
                              offset: const Offset(0, 8),
                            ),
                            menuItemStyleData: MenuItemStyleData(
                              customHeights: [
                                ...List<double>.filled(BloodGroupItems.firstItems.length, 48),
                              ],
                              padding: const EdgeInsets.only(left: 16, right: 16),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                AppSpaces.spaces_height_5,
                Row(
                  children: [
                    ///DoB
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.black12.withOpacity(.03),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: DateTimePicker(
                                  // focusNode: _focusDDateNode,
                                  type: DateTimePickerType.date,
                                  controller: DoB,
                                  calendarTitle: 'Date of Birth',
                                  textAlign: TextAlign.left,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      borderSide: BorderSide.none,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      borderSide: BorderSide.none,
                                    ),
                                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                                    focusColor: AppColors.primaryColor,
                                    contentPadding: const EdgeInsets.all(8.0),
                                    label: Container(
                                      child: Text(
                                        'DoB'.tr,
                                        style: const TextStyle(color: Colors.black54, fontSize: 12),
                                      ),
                                    ),
                                    alignLabelWithHint: false,
                                  ),
                                  cursorColor: AppColors.primaryColor,
                                  dateMask: 'dd MMM, yyyy',
                                  // initialValue: DateTime.now().toString(),
                                  // initialValue: 'Last donation date'.tr,
                                  initialDate: DateTime(DateTime.now().year - 35),
                                  firstDate: DateTime(DateTime.now().year - 35),
                                  lastDate: DateTime(DateTime.now().year - 18),
                                  icon: const Icon(Icons.event),
                                  onChanged: (val) {
                                    DoB!.text = val;
                                    age!.text = (DateTime.now().year - DateTime.parse(DoB!.text).year).toString();
                                    print(DateTime.now().year - DateTime.parse(DoB!.text).year);
                                  },
                                  //onSaved: (val) => print(val),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(4.0, 0.0, 4.0, 0.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.white,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Image.asset(
                                      'assets/icon/app_icons/calendar.png',
                                      color: AppColors.textColor,
                                      width: 15,
                                      height: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.black12.withOpacity(.03),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: TextField(
                            controller: age,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide.none,
                              ),
                              floatingLabelBehavior: FloatingLabelBehavior.auto,
                              focusColor: AppColors.primaryColor,
                              isDense: true,
                              contentPadding: const EdgeInsets.all(8.0),
                              label: Text(
                                'Age'.tr,
                                style: const TextStyle(color: Colors.black54, fontSize: 12),
                              ),
                              alignLabelWithHint: false,
                            ),
                            onChanged: (value) {
                              age!.text = value;
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                AppSpaces.spaces_height_5,

                Row(
                  children: [
                    ///Division
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            customButton: Container(
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.black12.withOpacity(.05),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    division!.text == '' ? 'Division'.tr : division!.text,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: division!.text == '' ? AppColors.black45 : AppColors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            items: [
                              ...profileData.locationModel!.division!.map(
                                (item) => DropdownMenuItem<MenuItem>(
                                  value: MenuItem(text: item.name.toString()),
                                  child: Text(
                                    item.name.toString(),
                                    style: TextStyle(
                                      color: AppColors.primaryColor,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                            // dropdownSearchData: DropdownSearchData(
                            //   searchController: searchDivision,
                            //   searchInnerWidgetHeight: 50,
                            //   searchInnerWidget: Container(
                            //     height: 50,
                            //     padding: const EdgeInsets.only(
                            //       top: 8,
                            //       bottom: 4,
                            //       right: 8,
                            //       left: 8,
                            //     ),
                            //     child: TextFormField(
                            //       expands: true,
                            //       maxLines: null,
                            //       controller: searchDivision,
                            //       decoration: InputDecoration(
                            //         isDense: true,
                            //         contentPadding: const EdgeInsets.symmetric(
                            //           horizontal: 10,
                            //           vertical: 8,
                            //         ),
                            //         hintText: 'Search Division...',
                            //         hintStyle: const TextStyle(fontSize: 12),
                            //         border: OutlineInputBorder(
                            //           borderRadius: BorderRadius.circular(8),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            //   searchMatchFn: (item, searchValue) {
                            //     return item.value.toString().contains(searchValue);
                            //   },
                            // ),
                            onChanged: (value) {
                              MenuItem? s;
                              s = value;
                              setState(() {
                                division!.text = value!.text;
                                divisionId = profileData.locationModel!.division!.firstWhere((element) => element.name == division!.text).id;

                                district!.text = '';
                                thana!.text = '';
                              });
                            },
                            dropdownStyleData: DropdownStyleData(
                              width: 160,
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: AppColors.primaryColor),

                                // color: AppColors.primaryColor,
                              ),
                              offset: const Offset(0, 8),
                            ),
                            menuItemStyleData: MenuItemStyleData(
                              customHeights: [
                                ...List<double>.filled(profileData.locationModel!.division!.length, 48),
                              ],
                              padding: const EdgeInsets.only(left: 16, right: 16),
                            ),
                          ),
                        ),
                      ),
                    ),

                    ///District
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            customButton: Container(
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.black12.withOpacity(.05),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    district!.text == '' ? 'District'.tr : district!.text,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: district!.text == '' ? AppColors.black45 : AppColors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            items: [
                              ...profileData.locationModel!.district!.where((e) => e.divisionId == divisionId).toList().map(
                                    (item) => DropdownMenuItem<MenuItem>(
                                      value: MenuItem(text: item.name.toString()),
                                      child: Text(
                                        item.name.toString(),
                                        style: TextStyle(
                                          color: AppColors.primaryColor,
                                        ),
                                      ),
                                    ),
                                  ),
                            ],
                            // dropdownSearchData: DropdownSearchData(
                            //   searchController: searchDistrict,
                            //   searchInnerWidgetHeight: 50,
                            //   searchInnerWidget: Container(
                            //     height: 50,
                            //     padding: const EdgeInsets.only(
                            //       top: 8,
                            //       bottom: 4,
                            //       right: 8,
                            //       left: 8,
                            //     ),
                            //     child: TextFormField(
                            //       expands: true,
                            //       maxLines: null,
                            //       controller: searchDistrict,
                            //       decoration: InputDecoration(
                            //         isDense: true,
                            //         contentPadding: const EdgeInsets.symmetric(
                            //           horizontal: 10,
                            //           vertical: 8,
                            //         ),
                            //         hintText: 'Search Division...',
                            //         hintStyle: const TextStyle(fontSize: 12),
                            //         border: OutlineInputBorder(
                            //           borderRadius: BorderRadius.circular(8),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            //   searchMatchFn: (item, searchValue) {
                            //     return item.value.toString().contains(searchValue);
                            //   },
                            // ),
                            onChanged: (value) {
                              MenuItem? s;

                              s = value;
                              setState(() {
                                district!.text = value!.text;
                                districtId = profileData.locationModel!.district!.firstWhere((element) => element.name == district!.text).id;

                                thana!.text = '';
                              });
                            },
                            dropdownStyleData: DropdownStyleData(
                              width: 160,
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: AppColors.primaryColor),

                                // color: AppColors.primaryColor,
                              ),
                              offset: const Offset(0, 8),
                            ),
                            menuItemStyleData: MenuItemStyleData(
                              customHeights: [
                                ...List<double>.filled(
                                    profileData.locationModel!.district!.where((e) => e.divisionId == divisionId).toList().length, 48),
                              ],
                              padding: const EdgeInsets.only(left: 16, right: 16),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                AppSpaces.spaces_height_5,

                Row(
                  children: [
                    ///Thana
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            customButton: Container(
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.black12.withOpacity(.05),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    thana!.text == '' ? 'Thana'.tr : thana!.text,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: thana!.text == '' ? AppColors.black45 : AppColors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            items: [
                              ...profileData.locationModel!.thana!.where((e) => e.districtId == districtId).toList().map(
                                    (item) => DropdownMenuItem<MenuItem>(
                                      value: MenuItem(text: item.name.toString()),
                                      child: Text(
                                        item.name.toString(),
                                        style: TextStyle(
                                          color: AppColors.primaryColor,
                                        ),
                                      ),
                                    ),
                                  ),
                            ],
                            // dropdownSearchData: DropdownSearchData(
                            //   searchController: searchDivision,
                            //   searchInnerWidgetHeight: 50,
                            //   searchInnerWidget: Container(
                            //     height: 50,
                            //     padding: const EdgeInsets.only(
                            //       top: 8,
                            //       bottom: 4,
                            //       right: 8,
                            //       left: 8,
                            //     ),
                            //     child: TextFormField(
                            //       expands: true,
                            //       maxLines: null,
                            //       controller: searchDivision,
                            //       decoration: InputDecoration(
                            //         isDense: true,
                            //         contentPadding: const EdgeInsets.symmetric(
                            //           horizontal: 10,
                            //           vertical: 8,
                            //         ),
                            //         hintText: 'Search Division...',
                            //         hintStyle: const TextStyle(fontSize: 12),
                            //         border: OutlineInputBorder(
                            //           borderRadius: BorderRadius.circular(8),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            //   searchMatchFn: (item, searchValue) {
                            //     return item.value.toString().contains(searchValue);
                            //   },
                            // ),
                            onChanged: (value) {
                              MenuItem? s;
                              s = value;
                              setState(() {
                                thana!.text = value!.text;

                                thanaId = profileData.locationModel!.thana!.firstWhere((element) => element.name == thana!.text).id;
                              });
                            },
                            dropdownStyleData: DropdownStyleData(
                              width: 160,
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: AppColors.primaryColor),

                                // color: AppColors.primaryColor,
                              ),
                              offset: const Offset(0, 8),
                            ),
                            menuItemStyleData: MenuItemStyleData(
                              customHeights: [
                                ...List<double>.filled(
                                    profileData.locationModel!.thana!.where((e) => e.districtId == districtId).toList().length, 48),
                              ],
                              padding: const EdgeInsets.only(left: 16, right: 16),
                            ),
                          ),
                        ),
                      ),
                    ),

                    ///Hospital
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            customButton: Container(
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.black12.withOpacity(.05),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    hospital!.text == '' ? 'Hospital'.tr : hospital!.text,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: hospital!.text == '' ? AppColors.black45 : AppColors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            items: [
                              ...profileData.hospitalModel!.data!.map(
                                (item) => DropdownMenuItem<MenuItem>(
                                  value: MenuItem(text: item.name.toString()),
                                  child: Text(
                                    item.name.toString(),
                                    style: TextStyle(color: AppColors.primaryColor, fontSize: 14),
                                  ),
                                ),
                              ),
                            ],
                            onChanged: (value) {
                              MenuItem? s;

                              s = value;
                              setState(() {
                                hospital!.text = value!.text;

                                hospitalId = profileData.hospitalModel!.data!.firstWhere((element) => element.name == hospital!.text).id;
                              });
                            },
                            dropdownStyleData: DropdownStyleData(
                              width: 160,
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: AppColors.primaryColor),

                                // color: AppColors.primaryColor,
                              ),
                              offset: const Offset(0, 8),
                            ),
                            menuItemStyleData: MenuItemStyleData(
                              customHeights: [
                                ...List<double>.filled(profileData.hospitalModel!.data!.length, 48),
                              ],
                              padding: const EdgeInsets.only(left: 16, right: 16),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                AppSpaces.spaces_height_5,

                Row(
                  children: [
                    ///Occupation
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            customButton: Container(
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.black12.withOpacity(.05),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    occupation!.text == '' ? 'Occupation'.tr : occupation!.text,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: occupation!.text == '' ? AppColors.black45 : AppColors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            items: [
                              ...OccupationItems.firstItems.map(
                                (item) => DropdownMenuItem<MenuItem>(
                                  value: item,
                                  child: OccupationItems.buildItem(item),
                                ),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                occupation!.text = value!.text;
                              });
                            },
                            dropdownStyleData: DropdownStyleData(
                              width: 160,
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: AppColors.primaryColor),

                                // color: AppColors.primaryColor,
                              ),
                              offset: const Offset(0, 8),
                            ),
                            menuItemStyleData: MenuItemStyleData(
                              customHeights: [
                                ...List<double>.filled(OccupationItems.firstItems.length, 48),
                              ],
                              padding: const EdgeInsets.only(left: 16, right: 16),
                            ),
                          ),
                        ),
                      ),
                    ),

                    ///University
                    occupation!.text != 'Student'
                        ? Container()
                        : Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton2(
                                  customButton: Container(
                                    decoration: BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.black12.withOpacity(.05),
                                        borderRadius: BorderRadius.circular(5.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          university!.text == '' ? 'University'.tr : university!.text,
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: university!.text == '' ? AppColors.black45 : AppColors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  items: [
                                    ...profileData.universityModel!.data!.map(
                                      (item) => DropdownMenuItem<MenuItem>(
                                        value: MenuItem(text: item.name.toString()),
                                        child: Text(
                                          item.name.toString(),
                                          style: TextStyle(
                                            color: AppColors.primaryColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                  onChanged: (value) {
                                    MenuItem? s;
                                    s = value;
                                    setState(() {
                                      university!.text = value!.text;
                                      // universityId = profileData.un!.thana!.firstWhere((element) => element.name == thana!.text).id;
                                    });
                                  },
                                  dropdownStyleData: DropdownStyleData(
                                    width: 160,
                                    padding: const EdgeInsets.symmetric(vertical: 6),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(color: AppColors.primaryColor),

                                      // color: AppColors.primaryColor,
                                    ),
                                    offset: const Offset(0, 8),
                                  ),
                                  menuItemStyleData: MenuItemStyleData(
                                    customHeights: [
                                      ...List<double>.filled(profileData.universityModel!.data!.length, 48),
                                    ],
                                    padding: const EdgeInsets.only(left: 16, right: 16),
                                  ),
                                ),
                              ),
                            ),
                          ),
                  ],
                ),
                AppSpaces.spaces_height_5,

                ///Ask Donation
                Text(
                  "Are you in any Group?".tr,
                  style: const TextStyle(fontSize: 14),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: RadioListTile(
                        dense: true,
                        title: Text("Yes".tr),
                        value: "yes",
                        groupValue: askGroup,
                        onChanged: (value) {
                          setState(() {
                            askGroup = value.toString();
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                        dense: true,
                        title: Text("No".tr),
                        value: "no",
                        groupValue: askGroup,
                        onChanged: (value) {
                          setState(() {
                            askGroup = value.toString();
                          });
                        },
                      ),
                    ),
                  ],
                ),
                AppSpaces.spaces_height_10,

                askGroup == 'yes'
                    ? Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            customButton: Container(
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.black12.withOpacity(.05),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    group!.text == '' ? 'Group'.tr : group!.text,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: group!.text == '' ? AppColors.black45 : AppColors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            items: [
                              ...profileData.groupModel!.data!.map(
                                (item) => DropdownMenuItem<MenuItem>(
                                  value: MenuItem(text: item.name.toString()),
                                  child: Text(
                                    item.name.toString(),
                                    style: TextStyle(
                                      color: AppColors.primaryColor,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                group!.text = value!.text;
                                groupId = profileData.groupModel!.data!.firstWhere((element) => element.name == group!.text).id;
                              });
                            },
                            dropdownStyleData: DropdownStyleData(
                              width: 160,
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: AppColors.primaryColor),

                                // color: AppColors.primaryColor,
                              ),
                              offset: const Offset(0, 8),
                            ),
                            menuItemStyleData: MenuItemStyleData(
                              customHeights: [
                                ...List<double>.filled(profileData.groupModel!.data!.length, 48),
                              ],
                              padding: const EdgeInsets.only(left: 16, right: 16),
                            ),
                          ),
                        ),
                      )
                    : Container(),

                AppSpaces.spaces_height_5,

                ///Ask Work Interest
                Text(
                  "Work with us?".tr,
                  style: const TextStyle(fontSize: 14),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: RadioListTile(
                        dense: true,
                        title: Text("Yes".tr),
                        value: "yes",
                        groupValue: workInterest,
                        onChanged: (value) {
                          setState(() {
                            workInterest = value.toString();
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                        dense: true,
                        title: Text("No".tr),
                        value: "no",
                        groupValue: workInterest,
                        onChanged: (value) {
                          setState(() {
                            workInterest = value.toString();
                          });
                        },
                      ),
                    ),
                  ],
                ),

                AppSpaces.spaces_height_5,

                ///Referral ID
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.black12.withOpacity(.03),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: TextField(
                      controller: referralID,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide.none,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        focusColor: AppColors.primaryColor,
                        isDense: true,
                        contentPadding: const EdgeInsets.all(8.0),
                        label: Text(
                          'Referral ID'.tr,
                          style: const TextStyle(color: Colors.black54, fontSize: 12),
                        ),
                        alignLabelWithHint: false,
                      ),
                      onChanged: (value) {
                        referralID!.text = value;
                      },
                    ),
                  ),
                ),
                AppSpaces.spaces_height_25,
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.primaryColor,
                    padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {
                    var body = {
                      'donate_check': askDonation, //required
                      'last_donate_date': donationDate!.text,
                      'first_name': firstName!.text, //required
                      'last_name': lastName!.text, //required
                      'email': emailAddress!.text, //required
                      'mobile': mobile!.text, //required
                      'blood_group': bloodGroup!.text, //required
                      'birth_date': DoB!.text, //required
                      'age': age!.text, //required
                      'gender': gender!.text, //required
                      'division_id': divisionId, //required
                      'district_id': districtId, //required
                      'thana_id': thanaId, //required
                      'occupation': occupation!.text, //required
                      'university_id': universityId,
                      'hospital_id': hospitalId, //required
                      'refer_id': referralID!.text,
                      'interested_work': workInterest,
                      'group_check': askGroup, //required
                      'group_id': groupId,
                      'address': '${thana!.text}, ${district!.text}, ${division!.text}',
                      'address_latitude': '',
                      'address_longitude': '',
                      'agree': 'yes', //required
                      'status': 1,
                      'live_address_check': '',
                      'weight': '',
                      'height': '',
                      'nid_no': '',
                      'facebook_id': '',
                      'instagram_id': '',
                      'youtube_id': '',
                      'linkedIn_id': '',
                      'image': '',
                      'password': ''
                    };

                    authController!.registration(context, body);
                  },
                  child: Text(
                    'Sign up'.tr,
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Row(
                    children: [
                      Text("Already have an account".tr),
                      TextButton(
                        onPressed: () => Get.toNamed(login),
                        child: Text(
                          "LOGIN".tr,
                          style: TextStyle(color: AppColors.primaryColor),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
