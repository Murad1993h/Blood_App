import 'package:blood_apps/authentication/signup_up.dart';
import 'package:blood_apps/route/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text("Sign In"),
        ),
        actions: [
          Icon(
            Icons.question_mark,
            color: Colors.white,
          )
        ],
      ),*/
      body: SafeArea(
        child: SingleChildScrollView(
          child:
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "sign_in".tr,
                      style: TextStyle(fontSize: 25),
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
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    Column(
                      children: [Text("E-mail Address")],
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
                    hintText: 'Insert your E-mail Address here',
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    Column(
                      children: [Text("Password")],
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
                    hintText: 'Insert your Password here',
                    suffixIcon: Icon(Icons.visibility),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    Column(
                      children: [
                        TextButton(
                          onPressed: () => Get.toNamed(forgotpassword),
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: Colors.purple,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
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
                  'Sign in',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "-  or  -",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Connect with",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Column(
                  children: [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: CircleAvatar(
                        backgroundColor: Colors.purple,
                        child: Icon(
                          Icons.call,size: 35,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Phone"),
                    ),
                  ],
                ),
                SizedBox(width: 15,),
                  Column(
                    children: [
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: CircleAvatar(
                          backgroundColor: Colors.purple,
                          child: Icon(
                            Icons.mail_outline_sharp,size: 35,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("E-mail"),
                      ),
                    ],
                  ),
                  SizedBox(width: 15,),
                  Column(
                    children: [
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: CircleAvatar(
                          backgroundColor: Colors.purple,
                          child: Icon(
                            Icons.dashboard,size: 35,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Other"),
                      )
                    ],
                  ),
              ],),
              const SizedBox(
                height: 20,
              ),
              TextButton(
               /* style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black12),
                ),*/

                onPressed: () => Get.toNamed(signupup),
                child:
                Text(
                  "Create an Account",
                  style: TextStyle(fontSize: 25, color: Colors.purple),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
