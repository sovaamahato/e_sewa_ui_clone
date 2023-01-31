import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  const MyTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:10.0,right: 10,bottom: 10),
      child: Container(
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(color: Colors.grey[900],borderRadius: BorderRadius.circular(20)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Row(
                 children: [
                   Container(
                            height: 40,
                            width: 40,
                            decoration:
                                BoxDecoration(color: Color.fromARGB(255, 238, 139, 132),
                                borderRadius: BorderRadius.circular(13)),
                          ),
                          SizedBox(width: 10,),
                          Padding(
                            padding: const EdgeInsets.only(top:8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                            
                            Text("Money transfered from NIC\n ASIA BANK LTD.",style: TextStyle(color: Colors.white),),
                            SizedBox(height: 17,),
                            Text("9:20 AM",style: TextStyle(fontSize: 13,color: Colors.grey),)
                          
                                                ],
                                              ),
                          )
                 ],
               ),
               SizedBox(height: 12,),
               Padding(
                 padding: const EdgeInsets.only(left:40.0),
                 child: RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: " Balance: ",
                                style:
                                    TextStyle(fontSize: 11, color: Colors.grey[400])),
                            // isShow?
                            TextSpan(
                                text: "2099",
                                style:
                                    TextStyle(fontSize: 15, color: Colors.white))
                            // :TextSpan(text: "XXXX.XX",style: TextStyle(color: Colors.white, fontSize: 15),),
                          ])),
               ),
               SizedBox(height: 5,),
             ],
           ),
    
           Padding(
             padding: const EdgeInsets.only(top:5.0,right: 5),
             child: Row(children: [
              Icon(Icons.arrow_drop_up,color: Colors.green,),
              Text("200",style: TextStyle(color: Colors.green),)
             ],),
           ),
                  
    
        ]),
      ),
    );
  }
}