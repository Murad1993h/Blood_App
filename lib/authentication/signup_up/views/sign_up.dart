import 'package:blood_apps/helpers/app_colors.dart';
import 'package:blood_apps/helpers/app_spaces.dart';
import 'package:blood_apps/route/route.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../helpers/dropdown/dropdown_menu_item.dart';
import '../../../helpers/dropdown/menu_items.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  //const SignUp({Key? key}) : super(key: key);
  // TextEditingController _genderController = TextEditingController();
  // List<String> Blood = ["A +", "A -", "B +", "B -", "O +", "O -"];
  TextEditingController _genderController1 = TextEditingController();
  List<String> Ocupation = ["Student", "Job", "Business"];

  //TextEditingController _genderController2 = TextEditingController();

  bool _isChecked = false;
  late String _selectedValue;

  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  String dropdownValue = 'Option 1';

  String? selectedValue;
  final jobRoleCtrl = TextEditingController();
  final university = TextEditingController();
  final country = TextEditingController();
  final district = TextEditingController();
  final city = TextEditingController();
  final area = TextEditingController();
  final ocupation = TextEditingController();

  String? askDonation;
  TextEditingController? donationDate = TextEditingController();
  TextEditingController? firstName = TextEditingController();
  TextEditingController? lastName = TextEditingController();
  TextEditingController? emailAddress = TextEditingController();
  TextEditingController? mobile = TextEditingController();

  TextEditingController? gender = TextEditingController(text: '');
  TextEditingController? DoB = TextEditingController();
  TextEditingController? age = TextEditingController();
  TextEditingController? bloodGroup = TextEditingController(text: '');

  // TextEditingController? donationDate = TextEditingController();
  // TextEditingController? donationDate = TextEditingController();
  // TextEditingController? donationDate = TextEditingController();
  // TextEditingController? donationDate = TextEditingController();
  // TextEditingController? donationDate = TextEditingController();
  // TextEditingController? donationDate = TextEditingController();
  // TextEditingController? donationDate = TextEditingController();

  @override
  void initState() {
    donationDate = TextEditingController(text: '');

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
      body: Center(
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
              AppSpaces.spaces_height_25,

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
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            focusColor: AppColors.primaryColor,
                            isDense: true,
                            contentPadding: const EdgeInsets.all(8.0),
                            label: Text(
                              'First name'.tr,
                              style: const TextStyle(color: Colors.black54, fontSize: 12),
                            ),
                            alignLabelWithHint: false,
                          ),
                          onChanged: (value) {
                            firstName!.text = value;
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
                                controller: donationDate,
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
              AppSpaces.spaces_height_25,
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: AppColors.primaryColor,
                  padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () => Get.toNamed(home),
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
                        onPressed: () => Get.toNamed(signup),
                        child: Text(
                          "LOGIN".tr,
                          style: TextStyle(color: AppColors.primaryColor),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
