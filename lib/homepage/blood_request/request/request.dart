import 'package:blood_apps/route/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Request extends StatelessWidget {
  const Request({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child:
          Column(
            children: [







              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text(
                      "Request",
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
              SizedBox(height: 5,),
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Urgent B+ Blood Needed",
                        style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Image.asset("assets/hospital/istock-1131179196.jpg"),

                      Row(children: [
                        Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Text("Urgent B+ Blood Needed",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                            // Image.asset("assets/hospital/istock-1131179196.jpg",fit: BoxFit.cover,),
                            Text(
                              "Patients Name: Rabeya Khanan",
                              style: TextStyle(),
                            ),
                            Text(
                              "Contact Numbar: 01949844233",
                              style: TextStyle(),
                            ),
                            Text(
                              "Problem:Delivery",
                              style: TextStyle(),
                            ),
                            Text(
                              "Quality : 2 Bag",
                              style: TextStyle(),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 40),
                          child: InkWell(
                            onTap: () => Get.toNamed(requestdetails),
                            child: Row(
                              children: [
                                Text("View More ..."),
                              ],
                            ),
                          ),
                        ),
                      ]),
                      Container(
                        height: 4,
                        color: Colors.red,
                      ),

                      //TextButton(onPressed: (){}, child: Text("View More ....")),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Urgent B+ Blood Needed",
                        style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Image.asset("assets/hospital/istock-1131179196.jpg"),

                      Row(children: [
                        Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Text("Urgent B+ Blood Needed",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                            // Image.asset("assets/hospital/istock-1131179196.jpg",fit: BoxFit.cover,),
                            Text(
                              "Patients Name: Rabeya Khanan",
                              style: TextStyle(),
                            ),
                            Text(
                              "Contact Numbar: 01949844233",
                              style: TextStyle(),
                            ),
                            Text(
                              "Problem:Delivery",
                              style: TextStyle(),
                            ),
                            Text(
                              "Quality : 2 Bag",
                              style: TextStyle(),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 40),
                          child: InkWell(
                            onTap: () => Get.toNamed(requestdetails),
                            child: Row(
                              children: [
                                Text("View More ..."),
                              ],
                            ),
                          ),
                        ),
                      ]),
                      Container(
                        height: 4,
                        color: Colors.red,
                      ),

                      //TextButton(onPressed: (){}, child: Text("View More ....")),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Urgent B+ Blood Needed",
                        style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Image.asset("assets/hospital/istock-1131179196.jpg"),

                      Row(children: [
                        Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Text("Urgent B+ Blood Needed",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                            // Image.asset("assets/hospital/istock-1131179196.jpg",fit: BoxFit.cover,),
                            Text(
                              "Patients Name: Rabeya Khanan",
                              style: TextStyle(),
                            ),
                            Text(
                              "Contact Numbar: 01949844233",
                              style: TextStyle(),
                            ),
                            Text(
                              "Problem:Delivery",
                              style: TextStyle(),
                            ),
                            Text(
                              "Quality : 2 Bag",
                              style: TextStyle(),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 40),
                          child: InkWell(
                            onTap: () => Get.toNamed(requestdetails),
                            child: Row(
                              children: [
                                Text("View More ..."),
                              ],
                            ),
                          ),
                        ),
                      ]),
                      Container(
                        height: 4,
                        color: Colors.red,
                      ),

                      //TextButton(onPressed: (){}, child: Text("View More ....")),
                    ],
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
