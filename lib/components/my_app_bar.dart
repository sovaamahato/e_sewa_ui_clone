import 'package:flutter/material.dart';

import '../pages/profile_page.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return ProfilePage();
              }));
            },
            child: CircleAvatar(
              radius: 25,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(
                      "https://pub-static.fotor.com/assets/projects/pages/d5bdd0513a0740a8a38752dbc32586d0/fotor-03d1a91a0cec4542927f53c87e0599f6.jpg")),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.search,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.notifications_outlined,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      backgroundColor: Colors.grey[900],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[900],
                              borderRadius: BorderRadius.circular(14)),
                          height: 350,
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(
                                  Icons.location_city,
                                  color: Colors.green[300],
                                ),
                                title: Text("eSewa CashPoint",style: TextStyle(color: Colors.white),),
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.location_city,
                                  color: Colors.green[300],
                                ),
                                title: Text("eSewa Remit Agents",style: TextStyle(color: Colors.white),),
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.chat_bubble_outline,
                                  color: Colors.green[300],
                                ),
                                title: Text("Help",style: TextStyle(color: Colors.white),),
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.location_city,
                                  color: Colors.green[300],
                                ),
                                title: Text("eSewa Tariffs",style: TextStyle(color: Colors.white),),
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.settings,
                                  color: Colors.green[300],
                                ),
                                title: Text("Settings",style: TextStyle(color: Colors.white),),
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.phone_android_outlined,
                                  color: Colors.green[300],
                                ),
                                title: Text("Logout",style: TextStyle(color: Colors.white),),
                              ),
                            ],
                          ),
                        );
                      });
                },
                child: Icon(
                  Icons.more_vert_outlined,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}