import 'package:esewa_clone_ui/components/tile_4_statement.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.black,
                  height: MediaQuery.of(context).size.height/2.6,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2.9,
                  decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight:Radius.circular(15) ,
                      )),
                ),
                
      
                
                //blackbox-------------
                Positioned(
                  left: 10,
                  right: 10,
                  top: MediaQuery.of(context).size.height / 3.1,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(13)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.book_outlined,
                              size: 17,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: " NPR ",
                                      style: TextStyle(
                                          fontSize: 11, color: Colors.white)),
                                  TextSpan(
                                      text: "6.08",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white))
                                  // :TextSpan(text: "XXXX.XX",style: TextStyle(color: Colors.white, fontSize: 15),),
                                ])),
                                Text("Balance",
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.white))
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.lightbulb_outline_sharp,
                          size: 17,
                          color: Colors.green,
                        ),
      
                        // SizedBox(
                        //   width: 8,
                        // ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "306.9",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                                // :Text("XXXX.XX",style: TextStyle(color: Colors.white, fontSize: 14),),
                                Text(
                                  "Reward Points",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 6,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                //profilepi--------------
                Positioned(
                  left: MediaQuery.of(context).size.width / 2.7,
                  top: MediaQuery.of(context).size.height / 25,
                  child: Container(
                    width: 100,
                    height: 130,
                    color: Colors.grey[900],
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset("lib/images/shobha2.jpg",fit: BoxFit.cover,)),
                        ),
                        Container(
                            // padding: EdgeInsets.all(5),
                            width: 70,
                            decoration: BoxDecoration(
                                color: Colors.grey[800],
                                borderRadius: BorderRadius.circular(13)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Icon(
                                    Icons.check_circle,
                                    color: Color.fromARGB(255, 105, 241, 110),
                                    size: 18,
                                  ),
                                ),
                                Text(
                                  "Verified",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 105, 241, 110),
                                      fontSize: 11),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width / 3,
                  top: MediaQuery.of(context).size.height / 4.6,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Sova kushwaha",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        Text(
                          "98000000",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          // padding: EdgeInsets.all(5),
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(13)),
      
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Icon(
                                  Icons.check_circle,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
                              Text(
                                "Active",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 11),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                
              ],
            ),
      
            //2nd box---
            Positioned(
                  
                  left: 10,
                  right: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal:10,vertical: 0),
                      height:MediaQuery.of(context).size.height/2.17,
                      width: MediaQuery.of(context).size.width,
                      
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey[900],),
                      child: ListView(
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                        ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(Icons.computer_outlined,color: Colors.green,),
                          ),
                          title: Text("My Information",style: TextStyle(color: Colors.white),),
                          subtitle: Text("View Your Personal Details",style: TextStyle(color: Colors.white70),),
                          trailing: Icon(Icons.arrow_forward_ios,color: Colors.white70,size: 20,),
                        ),
                        ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(Icons.phonelink_lock_outlined,color: Colors.green,),
                          ),
                          title: Text("Devices & Credentials",style: TextStyle(color: Colors.white),),
                          subtitle: Text("Manage devices,credentials & IDs",style: TextStyle(color: Colors.white70),),
                          trailing: Icon(Icons.arrow_forward_ios,color: Colors.white70,size: 20,),
                        ),
                        ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.home_outlined,color: Colors.green,),
                          ),
                          title: Text("My Bank Accounts",style: TextStyle(color: Colors.white),),
                          subtitle: Text("Connected Banks",style: TextStyle(color: Colors.white70),),
                          trailing: Icon(Icons.arrow_forward_ios,color: Colors.white70,size: 20,),
                        ),
                        ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.credit_card,color: Colors.green,),
                          ),
                          title: Text("My Limit",style: TextStyle(color: Colors.white),),
                          subtitle: Text("View Your Transaction limit",style: TextStyle(color: Colors.white70),),
                          trailing: Icon(Icons.arrow_forward_ios,color: Colors.white70,size: 20,),
                        ),
                        ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(Icons.logout,color: Colors.green,),
                          ),
                          title: Text("Logout",style: TextStyle(color: Colors.white),),
                          subtitle: Text("Logout from eSewa app",style: TextStyle(color: Colors.white70),),
                          trailing: Icon(Icons.arrow_forward_ios,color: Colors.white70,size: 20,),
                        ),
                      ]),
                    ),
                  ),
                ),
          
          ],
        ),
      ),
    );
  }
}
