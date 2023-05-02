import 'package:blood_apps/route/route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../onbording/new_onbording.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30,right: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                       onTap: () => Get.toNamed(onbordings),
                        child: Text(
                          "Forgot Password",
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                        height: 25,
                        child: CircleAvatar(
                          backgroundColor: Colors.purple,
                          child: Icon(
                            Icons.question_mark,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),





                const SizedBox(
                  height: 60,
                ),
                Row(
                  children: [
                    Column(
                      children: [Text("E-mail Address")],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,

                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
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
                      hintText: 'Insert your E-mail or Phone Address here',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),








              Text("Verification Code",style: TextStyle(fontSize: 20),),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: OtpTextField(
                    numberOfFields: 4,
                    borderColor: Colors.white,
                    focusedBorderColor: Colors.white,
                    textStyle: TextStyle(color: Colors.white),

                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true,
                    //runs when a code is typed in
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },
                    //runs when every textfield is filled
                    onSubmit: (String verificationCode) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Verification Code"),
                              content: Text('Code entered is $verificationCode'),
                            );
                          });
                    }, // end onSubmit
                  ),
                ),

















              TextButton(onPressed: (){}, child: Text("Send Verification Code again "),),












                Row(
                  children: [
                    Column(
                      children: [Text("Password")],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,

                  ),
                  child: TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
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
                      hintText: 'Create your New Password here',
                      suffixIcon: Icon(Icons.visibility),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),

                const SizedBox(
                  height: 15,
                ),









                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple,
                      padding: EdgeInsets.symmetric(horizontal: 120, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      // Button press action
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
















                const SizedBox(
                  height: 10,
                ),

               Center(child: Text("-  or  -",style: TextStyle(fontSize: 20),)) ,


                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: TextButton(
                    /* style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.black12),
                        ),*/

                    onPressed: (){}, //=> Get.toNamed(signupup),
                    child:
                    Text(
                      "Sign In Here",
                      style: TextStyle(fontSize: 25, color: Colors.purple),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),

    );
  }
}
