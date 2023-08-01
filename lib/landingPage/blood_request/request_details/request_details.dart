import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RequestDatails extends StatefulWidget {
  const RequestDatails({Key? key}) : super(key: key);

  @override
  State<RequestDatails> createState() => _RequestDatailsState();
}

class _RequestDatailsState extends State<RequestDatails> {
  bool _ischecked = true;

  bool _isbuttonactive = true;

  bool _isChecked = false;
  bool _ischeck = true;

 // bool _isbuttonactive = true;

  bool _isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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





              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Urgent B+ Blood Needed",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    SizedBox(height: 10,),
                  Text("patients Name: Rabeya Khanan",style: TextStyle(),),
                    SizedBox(height: 10,),
                  Text("Contact Number:01949844233",style: TextStyle(),),
                    SizedBox(height: 10,),
                  Text("Problem: Delivery",style: TextStyle(fontWeight: FontWeight.bold,),),
                    SizedBox(height: 10,),
                  Text("Quality:2 Bag",style: TextStyle(fontWeight: FontWeight.bold,),),
                    SizedBox(height: 10,),
                  Text("Problem: Delivery",style: TextStyle(fontWeight: FontWeight.bold,),),
                    SizedBox(height: 10,),
                  Text("Hospital Name:Islami Bank Hospital,\nMirpur",style: TextStyle(fontWeight: FontWeight.bold,),),
                    SizedBox(height: 10,),
                    Text("Location:"),
                    SizedBox(height: 10,),

                    Image.asset("assets/hospital/img.png"),


                ],),
              ),








              Padding(
                padding: const EdgeInsets.only(left: 160),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.end,
                  //mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  _isCheck==true?   Container(
                      height: 50,
                      width: 150,
                      color: Colors.white,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _isCheck=false;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: _isCheck ? Colors.black : Colors.white,
                          onPrimary: _isCheck ? Colors.white : Colors.black,
                        ),
                        child: Text("Accepted"),
                      )):

                  Container(
                      height: 50,
                      width: 150,
                      color: Colors.white,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _isCheck=true;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: _isCheck ? Colors.black : Colors.white,
                          onPrimary: _isCheck ? Colors.white : Colors.black,
                        ),

                        child: Text("Accepted"),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  _isChecked==true?   Container(
                      height: 50,
                      width: 150,
                      color: Colors.white,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _isChecked=false;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: _isChecked ? Colors.black : Colors.white,
                          onPrimary: _isChecked ? Colors.white : Colors.black,
                        ),
                        child: Text("Decline"),
                      )):Container(
                      height: 50,
                      width: 150,
                      color: Colors.white,
                      child: ElevatedButton(

                        onPressed: () {
                          setState(() {
                            _isChecked=true;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: _isChecked ? Colors.black : Colors.white,
                          onPrimary: _isChecked ? Colors.white : Colors.black,
                        ),

                        child: Text("Decline"),
                      )),

                ],),
              ),













            ],
          ),
        ),
      ),
    );
  }
}
