import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupUp extends StatefulWidget {
  const SignupUp({Key? key}) : super(key: key);

  @override
  State<SignupUp> createState() => _SignupUpState();
}

class _SignupUpState extends State<SignupUp> {
  bool _ischecked = true;

  bool _isbuttonactive = true;
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sign Up",
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
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    Column(
                      children: [Text("Full Name")],
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
                    hintText: 'Insert your FullName here',
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
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    Column(
                      children: [Text("Phone Numbar")],
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
                  keyboardType: TextInputType.number,
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
                    hintText: 'Insert your Phone Numbar here',
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
                      children: [Text("Blood Group")],
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
                    hintText: 'Select your Blood Group',
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
                      children: [Text("Last Blood Donation Date")],
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
                  keyboardType: TextInputType.datetime,
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
                    hintText: 'Select Date',
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
                      children: [Text("How many Donate Blood")],
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
                    hintText: 'Select Quantity Donate Blood',
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
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith<Color>(
                            (states) {
                          if (states.contains(MaterialState.disabled)) {
                            return  Color(0xFF004DC0);
                          }
                          return  Color(0xFF004DC0); // Change the fill color
                        },
                      ),

                      value: _isChecked,
                      onChanged: (newValue) {
                        setState(() {
                          _isChecked = newValue!;
                        });
                      },
                    ),
                    Text(
                      "I agree to the ".tr,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextButton(onPressed: (){}, child: Text("Terms & Conditions", style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40,right: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF004DC0), width: 2),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: SizedBox(
                        height: 30,
                        width: 130,
                        child: ElevatedButton(
                          onPressed: () {},//=> Get.toNamed(pictureuplod),
                          style: ElevatedButton.styleFrom(
                            primary: _isChecked ? Color(0xFF004DC0) : Colors.white,
                            onPrimary: _isChecked ? Colors.white : Color(0xFF004DC0),
                          ),
                          child: Text("Sign Up"),
                        ),
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF004DC0), width: 2),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: SizedBox(
                        height: 30,
                        width: 130,
                        child: ElevatedButton(
                          onPressed: () {},//=> Get.toNamed(pictureuplod),
                          style: ElevatedButton.styleFrom(
                            primary: _isChecked ? Color(0xFF004DC0) : Colors.white,
                            onPrimary: _isChecked ? Colors.white : Color(0xFF004DC0),
                          ),
                          child: Text("Sign In Here"),
                        ),
                      ),
                    ),
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
