import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:blood_apps/route/route.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Container(
            height: 990,
            width: 500,

            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "Create your account".tr,
                        //"Create new\n   Account",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      'Join the community of blood donors and save'.tr,
                      style: TextStyle(fontSize: 15,color: Colors.black38),
                    ),
                Center(
                  child: Text(
                    'nlives today!'.tr,
                    style: TextStyle(fontSize: 15,color: Colors.black38),
                  ),
                ),

                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "full_name".tr,
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ],
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person_rounded),
                        labelText: 'Enter your full name',
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 9.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],

                        labelStyle: TextStyle(
                          color: Colors.black26,
                        ),
                        // labelText: 'NAME',
                        hintText: "Insert your FullName here".tr,
                        hintStyle: TextStyle(fontSize: 12.0),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "Phone Numbar".tr,
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ],
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone_android),
                        labelText: "Enter mobile numbar".tr,
                        contentPadding: EdgeInsets.symmetric(vertical: 9.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],

                        labelStyle: TextStyle(
                          color: Colors.black26,
                        ),
                        // labelText: 'NAME',
                        // hintText: "Enter mobile numbar".tr,
                        hintStyle: TextStyle(fontSize: 12.0),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "Password".tr,
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ],
                    ),
                    TextFormField(

                      obscureText: true,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_outline),
                        labelText: '..........',
                        suffixIcon: Icon(Icons.visibility),
                        contentPadding: EdgeInsets.symmetric(vertical: 9.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],

                        labelStyle: TextStyle(
                          color: Colors.black26,
                        ),
                        //labelText: 'PASSWORD',
                        // hintText: '..........',
                        hintStyle: TextStyle(fontSize: 12.0),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "Password".tr,
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ],
                    ),
                    TextFormField(

                      obscureText: true,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_outline),
                        labelText: '..........',
                        suffixIcon: Icon(Icons.visibility),
                        contentPadding: EdgeInsets.symmetric(vertical: 9.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],

                        labelStyle: TextStyle(
                          color: Colors.black26,
                        ),
                        //labelText: 'PASSWORD',
                        // hintText: '..........',
                        hintStyle: TextStyle(fontSize: 12.0),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "Blood Group".tr,
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ],
                    ),
                    /*CustomDropdown(

                      fillColor: Colors.grey[200],
                      hintText: 'Select Blood Group'.tr,
                      hintStyle: TextStyle(fontSize: 12.0),
                      items: const ["A +", "A -", "B +", "B -", "O +", "O -"],
                      controller: jobRoleCtrl,
                    ),*/



                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                        //border: Border.all(color: Colors.grey),
                      ),

                      child: DropdownButtonFormField<String>(
                        //fillColor: Colors.grey[200],
                        decoration: InputDecoration(

                          prefixIcon: Icon(Icons.bloodtype_outlined),
                          hintText: "Enter your blood group".tr,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 9.0, horizontal: 20.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                        ),

                        items: ["A +", "A -", "B +", "B -", "O +", "O -"]
                            .map((language) => DropdownMenuItem(
                          value: language,
                          child: Text(language),

                        ))
                            .toList(),
                        onChanged: (value) {
                          print(value);
                        },
                      ),
                    ),



































                    const SizedBox(
                      height: 5,
                    ),



                    Row(children: [
                      Checkbox(
                        value: _isChecked,
                        // shape: CircleBorder(),
                        visualDensity: VisualDensity.compact,
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                      ),
                      Text("Remember me".tr,style: TextStyle(color: Colors.black38),),
                      TextButton(
                        onPressed: () => Get.toNamed(forgotpassword),
                        child: Text("FORGOTE PASSWORD".tr,style: TextStyle(color: Colors.black38)),
                      ),

                    ],),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        padding: EdgeInsets.symmetric(
                            horizontal: 100, vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () => Get.toNamed(home),
                      child: Text(
                        'Sign up'.tr,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Row(children: [
                        Text("Already have an account?".tr),
                        TextButton(
                            onPressed: () => Get.toNamed(signup),
                            child: Text("LOGIN".tr,style: TextStyle(color: Colors.red),)
                        ),

                      ],),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
/*Container(
decoration: BoxDecoration(
borderRadius:
BorderRadius.only(topRight: Radius.circular(70)),
color: Colors.blue,
),
child: Column(
children: [

],
),
),*/
