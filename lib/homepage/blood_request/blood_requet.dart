import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:blood_apps/route/route.dart';
import 'package:flutter/material.dart';
import 'package:fsearch/fsearch.dart';
import 'package:get/get.dart';

class BloodRequest extends StatefulWidget {
  const BloodRequest({Key? key}) : super(key: key);

  @override
  State<BloodRequest> createState() => _BloodRequestState();
}

class _BloodRequestState extends State<BloodRequest> {
  final problems = TextEditingController();
  final blood = TextEditingController();
  final hospital = TextEditingController();
  bool checked = false;
  bool checkeds = false;
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(

        toolbarHeight: 100,
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title:
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text(
                    "Blood Request",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu_outlined,
                      color: Colors.purple,
                    )),
                Container(
                  height: 35,
                  width: 230,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 9.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],

                      labelStyle: TextStyle(
                        color: Colors.black26,
                      ),
                      suffixIcon: Container(
                        width: 20.0,
                        height: 20.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.purple,
                        ),

                        //: EdgeInsets.only(right: 10.0),
                        child: IconButton(
                          icon: Icon(Icons.search),
                          color: Colors.grey,
                          onPressed: () {
                            // Toggle password visibility
                          },
                        ),
                      ),
                      // labelText: 'NAME',
                      hintText: "Searce here...".tr,
                      hintStyle: TextStyle(fontSize: 12.0),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.settings,
                      color: Colors.purple,
                    )),
              ],
            ),
          ],
        ),

        //leading: Text("Blood Request",style: TextStyle(color: Colors.black,fontSize: 25),),
        // title: Text("Blood Request",style: TextStyle(color: Colors.black,fontSize: 25),),
      ),*/
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child:
                Row(
                  children: [
                    Text(
                      "Blood Request",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.menu_outlined,
                        color: Colors.purple,
                      )),
                  Container(
                    height: 35,
                    width: 230,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 9.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],

                        labelStyle: TextStyle(
                          color: Colors.black26,
                        ),
                        suffixIcon: Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.purple,
                          ),

                          //: EdgeInsets.only(right: 10.0),
                          child: IconButton(
                            icon: Icon(Icons.search),
                            color: Colors.white,
                            onPressed: () {
                              // Toggle password visibility
                            },
                          ),
                        ),
                        // labelText: 'NAME',
                        hintText: "Searce here...".tr,
                        hintStyle: TextStyle(fontSize: 12.0),
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.settings,
                        color: Colors.purple,
                      )),
                ],
              ),






              Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Patient Name".tr,
                            style: TextStyle(fontSize: 15),
                          )
                        ],
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
                        hintText: "Insert your Patient Name here".tr,
                        hintStyle: TextStyle(fontSize: 12.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Hospital Name".tr,
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    ],
                  ),
                  CustomDropdown(
                    fillColor: Colors.grey[200],
                    hintText: 'Select your Hospital Name'.tr,
                    hintStyle: TextStyle(fontSize: 12.0),
                    items: const [
                      "operation",
                      "etc",
                    ],
                    controller: hospital,
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Select Blood Group".tr,
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    ],
                  ),
                  CustomDropdown(
                    fillColor: Colors.grey[200],
                    hintText: 'Select patient Blood Group'.tr,
                    hintStyle: TextStyle(fontSize: 12.0),
                    items: const [
                      "A+",
                      "A-",
                      "B+",
                      "B-",
                      "O+" "O-",
                    ],
                    controller: blood,
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Contact Numbar".tr,
                            style: TextStyle(fontSize: 15),
                          )
                        ],
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
                        hintText: "Insert Relative Contact Numbar".tr,
                        hintStyle: TextStyle(fontSize: 12.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Select Patience Problems".tr,
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    ],
                  ),
                  CustomDropdown(
                    fillColor: Colors.grey[200],
                    hintText: 'Select Patience Problem'.tr,
                    hintStyle: TextStyle(fontSize: 12.0),
                    items: const [
                      "operation",
                      "etc",
                    ],
                    controller: problems,
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Blood Donation Data".tr,
                            style: TextStyle(fontSize: 15),
                          )
                        ],
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
                        hintText: "Select Doantion Data".tr,
                        hintStyle: TextStyle(fontSize: 12.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),



                  Text(
                    "Blood Donation Data".tr,
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(height: 5,),








                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //crossAxisAlignment: CrossAxisAlignment.start,


                    children: [



                    Column(
                     // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(

                          children: [

                            Checkbox(

                                value: checked,
                                onChanged: (changedValue){
                                  setState(() {
                                    checked = changedValue!;
                                  });
                                }
                            ),
                            const Text("Blood Type"),
                          ],
                        ),
                        Row(

                          children: [

                            Checkbox(

                                value: checkeds,
                                onChanged: (changedValue){
                                  setState(() {
                                    checkeds = changedValue!;
                                  });
                                }
                            ),
                            const Text("Blood Type"),
                          ],
                        ),
                        Text("Blood Type"),
                        Text("Blood Type"),

                    ],),
                      Row(

                        children: [

                          Checkbox(

                              value: check,
                              onChanged: (changedValue){
                                setState(() {
                                  check = changedValue!;
                                });
                              }
                          ),

                          const Text("Dengue"),

                        ],
                      ),



                  ],),
                  SizedBox(height: 5,),

                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                        padding: EdgeInsets.symmetric(
                            horizontal: 60, vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () => Get.toNamed(request),
                      child: Text(
                        'Submit Request'.tr,
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
