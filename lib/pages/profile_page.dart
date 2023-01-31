import 'package:esewa_clone_ui/components/tile_4_statement.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        elevation: 0,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                color: Colors.black,
                height: MediaQuery.of(context).size.height / 2.6,
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
                  height: 140,
                  color: Colors.grey[900],
                  child: CircleAvatar(
                    radius: 25,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.network(
                                "https://pub-static.fotor.com/assets/projects/pages/d5bdd0513a0740a8a38752dbc32586d0/fotor-03d1a91a0cec4542927f53c87e0599f6.jpg")),
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
        
        ],
      ),
    );
  }
}
