import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

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
          "Profile",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body:




      Column(
        children: <Widget>[
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.black12,
          ),
          SizedBox(height: 5,),
          Text("Sofia Rizvi",style: TextStyle(fontSize: 20),),
          SizedBox(height: 10,),
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
                    Icons.fingerprint_outlined,
                    color: Colors.red,
                  ),

                  SizedBox(width: 5),
                  Text(
                    'VIEW BADGES',
                    style: TextStyle(color: Colors.red),
                  ),

                  // Add some spacing between the icon and text
                ],
              ),
            ),
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Column(children: [
              Text("250"),
              Text("Follwers",style: TextStyle(color: Colors.black38),),
            ],),
            SizedBox(width: 40,),
            Column(children: [
              Text("169"),
              Text("Follwers",style: TextStyle(color: Colors.black38),),
            ],),
          ],),
          SizedBox(height: 10,),
          ElevatedButton(
            onPressed: () {
              // Your code here
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              padding: EdgeInsets.symmetric(vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('INSIGHT'),

                SizedBox(width: 5),
                Icon(Icons.online_prediction_sharp),
                // Add some spacing between the icon and text
              ],
            ),
          ),






















          TabBar(




            indicatorColor: Colors.red,

            controller: _tabController,
            tabs: [
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Tab(
                  child: Text(
                    'PHOTOS',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Tab(
                  child: Text(
                    'VIDEOS',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),

              Tab(
                  child: Icon(
                Icons.add,
                color: Colors.red,
              )),
            ],
          ),






          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // Content for Tab 1
                GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemCount: 300,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        color: Colors.amber,

                        child: Center(child: Text('$index')),


                      );
                    }
                ),
                GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemCount: 300,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        color: Colors.amber,

                        child: Center(child: Text('$index')),


                      );
                    }
                ),

                // Content for Tab 2

                // Content for Tab 3
                Center(
                  child: Text('This is the content for Tab 3'),
                ),
              ],
            ),
          ),

















          SizedBox(height: 20,),
































          Container(

            //height: double.infinity,
            width: 320,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Blood Group"),
                      Text("Date of Birth"),
                      Text("Mobile"),
                      Text("Email"),
                      Text("Address"),
                      Text("Gender"),
                      Text("Weight"),
                      Text("Lasr Donation"),
                      //SizedBox(width:50),

                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [

                      Text(
                        "O+ve",
                        style: TextStyle(color: Colors.black38),
                      ),
                      Text(
                        "Apr 20, 1999",
                        style: TextStyle(color: Colors.black38),
                      ),
                      Text(
                        "01949844233",
                        style: TextStyle(color: Colors.black38),
                      ),
                      Text(
                        "user@gmail.com",
                        style: TextStyle(color: Colors.black38),
                      ),

                      Text(
                        "Mirpur,Dhaka",
                        style: TextStyle(color: Colors.black38),
                      ),
                      Text(
                        "Male",
                        style: TextStyle(color: Colors.black38),
                      ),
                      Text(
                        "64 kg",
                        style: TextStyle(color: Colors.black38),
                      ),
                      Text(
                        "MAr 12, 2023",
                        style: TextStyle(color: Colors.black38),
                      ),
                    ],
                  ),


                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}





