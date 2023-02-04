import 'package:esewa_clone_ui/components/all_notifications_tab.dart';
import 'package:flutter/material.dart';

import '../components/mytab.dart';

class NotificationsPage extends StatefulWidget {
  

  

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {

  List<Widget> tabOpts=[
  //donut
  MyTab( tabName: "All",),
  //pizza
  MyTab( tabName: "Payments",),

  //pancake
  MyTab( tabName: "Offers",),
  //burger
  // MyTab( tabName: "Reminders",),
  // //icecream
  // MyTab( tabName: "Accounts",),
 ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:tabOpts.length,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          title: Text("My Notifications",style: TextStyle(color: Colors.white,fontSize: 14),)),
          body: Column(
            children: [
              TabBar(tabs: tabOpts),
              Expanded(
                child: TabBarView(children: [
                  //donut
                   AllNotificationsTab(),
                  
                  
                ]),
              )
            ],
          ),
          
    
      ),
    );
  }
}