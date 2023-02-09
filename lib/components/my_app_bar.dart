import 'package:flutter/material.dart';

import '../pages/notifications_page.dart';
import '../pages/profile_page.dart';
import '../pages/search_page.dart';

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
                  child: Image.asset(
                      "lib/images/shobha2.jpg",fit: BoxFit.cover)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: (){
                  showSearch(context: context, delegate: SearchPage());
                },
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 10,
              ),


              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                    return NotificationsPage();
                  }));
                  
                },
                child: Icon(
                  Icons.notifications_outlined,
                  color: Colors.white,
                ),
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
