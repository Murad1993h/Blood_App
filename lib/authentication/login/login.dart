import 'package:blood_apps/route/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LogIn extends StatefulWidget {
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  //const LogIn({Key? key}) : super(key: key);
 // bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    bool _isChecked = false;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Container(
              height: 530,
              width: 500,

              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(
                        "Welcome back".tr,
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    //InkWell(child: Text("Sign in to continue.")),
                    Text("Log in your account.".tr,style: TextStyle(fontSize: 15,color: Colors.black38),),
                    const SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Row(
                        children: [
                          Column(
                            children: [Text("Phone Numbar".tr,style: TextStyle(fontSize: 10),)],
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        left: 40,
                        right: 40,
                      ),
                      child:
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone_android),
                         // labelText: "Enter mobile numbar".tr,
                          contentPadding: EdgeInsets.symmetric(vertical: 9.0, horizontal: 20.0),
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
                          hintText: "Enter mobile numbar".tr,
                          hintStyle: TextStyle(fontSize: 12.0),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Row(
                        children: [
                          Column(
                            children: [Text("PASSWORD".tr,style: TextStyle(fontSize: 10),)],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        left: 40,
                        right: 40,
                      ),
                      child:
                      TextFormField(

                        obscureText: true,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline),
                          //labelText: '..........',
                          suffixIcon: Icon(Icons.visibility),
                          contentPadding: EdgeInsets.symmetric(vertical: 9.0, horizontal: 20.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.grey[200],

                          labelStyle: TextStyle(
                            color: Colors.black26,
                          ),
                          //labelText: 'PASSWORD',
                          hintText: '..........',
                          hintStyle: TextStyle(fontSize: 12.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Row(children: [
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
                    ),
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
                        'log_in'.tr,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Row(children: [
                        Text("Don't have an account yet?".tr),
                        TextButton(
                          onPressed: () => Get.toNamed(signup),
                          child: Text("Signup".tr,style: TextStyle(color: Colors.red),)
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
