import 'package:esewa_clone_ui/components/big_container_with_icons.dart';
import 'package:esewa_clone_ui/components/botton_bar.dart';
import 'package:esewa_clone_ui/components/icon_box.dart';
import 'package:esewa_clone_ui/components/my_app_bar.dart';

import '/my_container.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //bottom navigation bar with five icons-------
      bottomNavigationBar: BottomBar(),
      //floating action buttom---------
      floatingActionButton: FloatingActionButton(
        tooltip: "scan & pay",
        onPressed: (){},
      child: Icon(Icons.qr_code,color: Colors.grey[900],size: 35,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: Column(
              children: [
                //appbar--------
                Stack(
                  children: [
                    Container(
                      height: 176,
                    ),
                    Container(
                      height: 141,
                      decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                    ),
                    MyAppBar(),
                    Positioned(
                      top: 63,
                      left: 9,
                      //container having two rows
                      child: MyContainer(),
                    ),
                  ],
                ),
                
                //big container containing icons----------

                Container(
                  padding: EdgeInsets.only(top: 8),
                  height: 550,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[900]),
                  child: Column(
                    children: [
                      BigContainer(),
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                                color: Color.fromARGB(255, 19, 51, 20)),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "view less  ^",
                                style: TextStyle(color: Colors.green[300]),
                              ),
                            ),
                          ),
                          SizedBox(width: 35,),
                          Container(
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                                color: Color.fromARGB(255, 19, 51, 20)),
                            child: Icon(
                              Icons.edit_outlined,
                              size: 28,
                              color: Colors.green[300],
                            ),
                          ),
                          
                        ],
                      ),
                    ],
                  ),
                ),

                //changing card-------
                // ListView(
                //   scrollDirection: Axis.horizontal,
                //   children: [
                //     Container(
                //       height: 150,
                //       width: MediaQuery.of(context).size.width,
                //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(13)),
                //        child: Image.network("https://media.istockphoto.com/id/1253821240/vector/set-of-vector-healthy-food-symbol.jpg?s=170667a&w=is&k=20&c=7oM0EFpCJz1me_cNygXCJ1drU0g3iHlEAOGrRmKYJog=",fit: BoxFit.cover,),

                //     ),

                //   ],
                  
                // ),


                
                //listiview horizontally scrollable-----------
                //listview vertically scorabable-----------
              ],
            ),
          ),
        ),
      ),
    );
  }
}
