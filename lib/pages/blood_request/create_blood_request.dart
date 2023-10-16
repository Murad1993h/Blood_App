import 'package:blood_apps/helpers/app_spaces.dart';
import 'package:blood_apps/main.dart';
import 'package:blood_apps/pages/profile/controllers/profile_controller.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

import '../../helpers/app_colors.dart';
import '../../helpers/dropdown/dropdown_menu_item.dart';
import '../../helpers/dropdown/menu_items.dart';
import '../go_to_login.dart';
import 'controller/blood_requeat_controller.dart';

class CreateBloodRequest extends StatefulWidget {
  const CreateBloodRequest({Key? key}) : super(key: key);

  @override
  State<CreateBloodRequest> createState() => _CreateBloodRequestState();
}

class _CreateBloodRequestState extends State<CreateBloodRequest> {
  String? requestType;

  TextEditingController? requestDate = TextEditingController(text: DateTime.now().toIso8601String());
  TextEditingController? patientName = TextEditingController();
  TextEditingController? patientProblem = TextEditingController();
  TextEditingController? description = TextEditingController();

  // TextEditingController? requestType = TextEditingController(text: '');
  TextEditingController? gender = TextEditingController(text: '');
  TextEditingController? DoB = TextEditingController();
  TextEditingController? age = TextEditingController();
  TextEditingController? bloodGroup = TextEditingController(text: '');
  TextEditingController? bloodQuantity = TextEditingController();
  TextEditingController? contactNumber = TextEditingController();

  num? divisionId = -1;
  num? districtId = -1;
  num? thanaId = -1;
  TextEditingController? division = TextEditingController(text: '');
  TextEditingController? searchDivision = TextEditingController(text: '');
  TextEditingController? district = TextEditingController(text: '');
  TextEditingController? searchDistrict = TextEditingController(text: '');
  TextEditingController? thana = TextEditingController(text: '');

  num? hospitalId = -1;
  TextEditingController? hospital = TextEditingController(text: '');

  BloodRequestController? bloodRequestController;

  var uuid = Uuid();

  @override
  void initState() {
    // TODO: implement initState
    bloodRequestController = Provider.of<BloodRequestController>(context, listen: false);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: AppColors.primaryColor,
        ),
        backgroundColor: AppColors.white,
        elevation: 1.0,
        centerTitle: true,
        title: Text(
          'CREATE BLOOD REQUEST'.tr,
          style: TextStyle(
            fontSize: 18,
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Consumer<ProfileController>(builder: (context, profileData, child) {
        return prefs!.getBool('guestLogIn') == true
            ? const GoToLogIn()
            : Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView(
                        children: [
                          AppSpaces.spaces_height_10,
                          Text(
                            "Request type".tr,
                            style: const TextStyle(fontSize: 14),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: RadioListTile(
                                  dense: true,
                                  title: Text("On date".tr),
                                  value: "yes",
                                  groupValue: requestType,
                                  onChanged: (value) {
                                    setState(() {
                                      requestType = value;
                                    });
                                  },
                                ),
                              ),
                              Expanded(
                                child: RadioListTile(
                                  dense: true,
                                  title: Text("Advance".tr),
                                  value: "no",
                                  groupValue: requestType,
                                  onChanged: (value) {
                                    setState(() {
                                      requestType = value;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                          AppSpaces.spaces_height_10,

                          ///Donation Date
                          requestType == 'no'
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
                                            controller: requestDate,
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
                                                  'Request date'.tr,
                                                  style: const TextStyle(color: Colors.black54, fontSize: 12),
                                                ),
                                              ),
                                              alignLabelWithHint: false,
                                            ),
                                            cursorColor: AppColors.primaryColor,
                                            dateMask: 'dd MMM, yyyy',
                                            firstDate: DateTime(2000),
                                            lastDate: DateTime(2100),
                                            icon: const Icon(Icons.event),
                                            validator: (val) {
                                              requestDate!.text = val!;

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
                          AppSpaces.spaces_height_10,
                          Row(
                            children: [
                              ///Patient Problem
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: AppColors.black12.withOpacity(.03),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: TextField(
                                      controller: patientName,
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
                                          'Patient name'.tr,
                                          style: const TextStyle(color: Colors.black54, fontSize: 12),
                                        ),
                                        // alignLabelWithHint: false,
                                      ),
                                      onChanged: (value) {
                                        print(value);
                                        patientName!.text = value;
                                        patientName!.selection = TextSelection.fromPosition(
                                          TextPosition(offset: patientName!.text.length),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),

                              ///Patient Problem
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
                                              patientProblem!.text == '' ? 'Patient problem'.tr : patientProblem!.text,
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: patientProblem!.text == '' ? AppColors.black45 : AppColors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      items: [
                                        ...PatientProblemItems.firstItems.map(
                                          (item) => DropdownMenuItem<MenuItem>(
                                            value: item,
                                            child: PatientProblemItems.buildItem(item),
                                          ),
                                        ),
                                      ],
                                      onChanged: (value) {
                                        setState(() {
                                          patientProblem!.text = value!.text;
                                        });
                                      },
                                      dropdownStyleData: DropdownStyleData(
                                        width: 300,
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
                                          ...List<double>.filled(PatientProblemItems.firstItems.length, 48),
                                        ],
                                        padding: const EdgeInsets.only(left: 16, right: 16),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          AppSpaces.spaces_height_10,
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
                          AppSpaces.spaces_height_10,
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
                          AppSpaces.spaces_height_10,
                          Row(
                            children: [
                              ///Blood quantity
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: AppColors.black12.withOpacity(.03),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: TextField(
                                      controller: bloodQuantity,
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
                                          'Blood quantity'.tr,
                                          style: const TextStyle(color: Colors.black54, fontSize: 12),
                                        ),
                                        alignLabelWithHint: false,
                                      ),
                                      keyboardType: TextInputType.number,
                                      textInputAction: TextInputAction.next,
                                      onChanged: (value) {
                                        bloodQuantity!.text = value;
                                        bloodQuantity!.selection = TextSelection.fromPosition(
                                          TextPosition(offset: bloodQuantity!.text.length),
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
                                      controller: contactNumber,
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
                                          'Mobile'.tr,
                                          style: const TextStyle(color: Colors.black54, fontSize: 12),
                                        ),
                                        // alignLabelWithHint: false,
                                      ),
                                      onChanged: (value) {
                                        contactNumber!.text = value;
                                        contactNumber!.selection = TextSelection.fromPosition(
                                          TextPosition(offset: contactNumber!.text.length),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          AppSpaces.spaces_height_10,
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
                                      onChanged: (value) {
                                        MenuItem? s;
                                        s = value;
                                        setState(() {
                                          division!.text = value!.text;
                                          divisionId =
                                              profileData.locationModel!.division!.firstWhere((element) => element.name == division!.text).id;

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
                                      onChanged: (value) {
                                        MenuItem? s;

                                        s = value;
                                        setState(() {
                                          district!.text = value!.text;
                                          districtId =
                                              profileData.locationModel!.district!.firstWhere((element) => element.name == district!.text).id;

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
                          AppSpaces.spaces_height_10,
                          Padding(
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
                          AppSpaces.spaces_height_10,

                          ///Patient Problem
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.black12.withOpacity(.03),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: TextField(
                                controller: description,
                                maxLines: 5,
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
                                    'Patient problem'.tr,
                                    style: const TextStyle(color: Colors.black54, fontSize: 12),
                                  ),
                                  alignLabelWithHint: false,
                                ),
                                onChanged: (value) {
                                  description!.text = value;
                                  description!.selection = TextSelection.fromPosition(
                                    TextPosition(offset: description!.text.length),
                                  );
                                },
                              ),
                            ),
                          ),
                          AppSpaces.spaces_height_10,
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        ///API from Nazim =>
                        var body = {
                          "request_by": prefs!.getString('userId'),
                          "patient_name": patientName!.text,
                          "patient_problem": patientProblem!.text,
                          "age": age!.text,
                          "gender": gender!.text,
                          "blood_group": bloodGroup!.text,
                          "blood_quantity": bloodQuantity!.text,
                          "date": requestDate!.text,
                          "time": requestDate!.text,
                          "contact_number": contactNumber!.text,
                          "division_id": divisionId!,
                          "district_id": districtId!,
                          "hospital_name": hospitalId!,
                          "request_type": requestType! == 'yes' ? 'On Date' : 'Advanced',
                          "description": description!.text,
                          "status": 0,
                          "payment_amount": int.parse(bloodQuantity!.text) * 600
                        };

                        var transactionId = uuid.v1();
                        debugPrint(body.toString());
                        bloodRequestController!.createBloodRequest(
                          context,
                          body,
                          int.parse(bloodQuantity!.text) * 600,
                          transactionId,
                        );
                        // sslCommerzGeneralCall();
                      },
                      child: Container(
                        width: Get.width,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          border: Border.all(color: AppColors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Proceed to pay'.tr,
                            style: TextStyle(color: AppColors.white),
                          ),
                        ),
                      ),
                    ),
                    AppSpaces.spaces_height_10,
                  ],
                ),
              );
      }),
    );
  }
}
