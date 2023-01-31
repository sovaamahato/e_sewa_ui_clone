import 'package:esewa_clone_ui/components/tile_4_statement.dart';
import 'package:flutter/material.dart';

class MyStatementpage extends StatelessWidget {
  const MyStatementpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text("Filter",style: TextStyle(color: Colors.black,fontSize: 17),),
        icon: Icon(
          Icons.filter,
          color: Colors.black,
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[900],
        title: Text(
          "Statement",
          style: TextStyle(fontSize: 14),
        ),
        actions: [
          Icon(
            Icons.share,
          ),
          SizedBox(
            width: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 19.0),
            child: Icon(
              Icons.note_add_outlined,
              size: 30,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            color: Colors.grey[900],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.book_outlined,
                      size: 30,
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
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white)),
                          // isShow?
                          TextSpan(
                              text: "6.08",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white))
                          // :TextSpan(text: "XXXX.XX",style: TextStyle(color: Colors.white, fontSize: 15),),
                        ])),
                        Text("Balance",
                            style: TextStyle(fontSize: 11, color: Colors.white))
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.refresh,
                  color: Colors.green,
                  size: 35,
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17.0),
            child: Text(
              "Fri, Jan 20",
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView(
              children: [
                MyTile(),
                MyTile(),
                MyTile(),
                MyTile(),
                MyTile(),
                MyTile(),
                MyTile(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
