import 'package:flutter/material.dart';

class NotifiCation extends StatefulWidget {
  const NotifiCation({Key? key}) : super(key: key);

  @override
  State<NotifiCation> createState() => _NotifiCationState();
}

class _NotifiCationState extends State<NotifiCation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.black,
        ),
        title: Text(
          "Notification",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Column(children: [
              Row(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black12,
                        radius: 30,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("200 BDT Deposited"),
                            SizedBox(width: 90,),
                            Text(
                              "2m ago",
                              style: TextStyle(color: Colors.black26),
                            ),
                          ],
                        ),
                        Text(
                          "200 BDT has been deposited to\nyour account from Md.atikur rahaman",
                          style: TextStyle(color: Colors.black26),
                        ),




                      ],
                    ),

                  ),


                ],
              ),

              Container(
                height: 30,
                width: 160,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    // Your code here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    // padding: EdgeInsets.symmetric(vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Icon(
                        Icons.picture_as_pdf_outlined,
                        color: Colors.red,
                      ),

                      SizedBox(width: 5),
                      Text(
                        'VIEW DETAILS',
                        style: TextStyle(color: Colors.red),
                      ),

                      // Add some spacing between the icon and text
                    ],
                  ),
                ),
              ),
            ],),
            SizedBox(height: 5,),
            Column(children: [
              Row(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black12,
                        radius: 30,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("O+ Blood Need!!"),
                            SizedBox(width: 110,),
                            Text(
                              "5d ago",
                              style: TextStyle(color: Colors.black26),
                            ),
                          ],
                        ),
                        Text(
                          "Monday 08:00 am at Osmai\nmedical Sylhet",
                          style: TextStyle(color: Colors.black26),
                        ),




                      ],
                    ),

                  ),


                ],
              ),

              Container(
                height: 30,
                width: 160,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    // Your code here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    // padding: EdgeInsets.symmetric(vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Icon(
                        Icons.picture_as_pdf_outlined,
                        color: Colors.red,
                      ),

                      SizedBox(width: 5),
                      Text(
                        'VIEW DETAILS',
                        style: TextStyle(color: Colors.red),
                      ),

                      // Add some spacing between the icon and text
                    ],
                  ),
                ),
              ),
            ],),
            SizedBox(height: 5,),













            Row(
              children: [
                Row(
                  children: [
                    Icon(Icons.lock,color: Colors.black38,size: 35,),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Password Changed"),
                          SizedBox(width: 120,),
                          Text(
                            "1w ago",
                            style: TextStyle(color: Colors.black26),
                          ),
                        ],
                      ),
                      Text(
                        "your password has been\nsuccessfull changed",
                        style: TextStyle(color: Colors.black26),
                      ),

                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Row(
                  children: [
                    Icon(Icons.person_rounded,color: Colors.black38,size: 35,),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Password Changed"),
                          SizedBox(width: 120,),
                          Text(
                            "1w ago",
                            style: TextStyle(color: Colors.black26),
                          ),
                        ],
                      ),
                      Text(
                        "your password has been\nsuccessfull changed",
                        style: TextStyle(color: Colors.black26),
                      ),

                    ],
                  ),
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
