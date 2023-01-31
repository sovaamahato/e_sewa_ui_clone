import 'package:esewa_clone_ui/components/icon_box.dart';
import 'package:flutter/material.dart';

class MyContainer extends StatefulWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {

  bool isShow=false;

  void ShowNum() {
    setState(() {
      isShow = !isShow;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      width: 320,
      height: 125,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
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
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white)),
                          isShow?TextSpan(

                              text: "6.08",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white)):TextSpan(text: "XXXX.XX",style: TextStyle(color: Colors.white, fontSize: 15),),
                        ])),
                        Text("Balance",
                            style: TextStyle(fontSize: 11, color: Colors.white))
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(50)),
                  child: GestureDetector(
                    onTap: ShowNum,
                    child: isShow?Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.grey[700],
                      size: 20,
                    ):Icon(
                      Icons.visibility_off_outlined,
                      color: Colors.grey[700],
                      size: 20,
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        isShow?Text(
                          "306.9",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ):Text("XXXX.XX",style: TextStyle(color: Colors.white, fontSize: 14),),
                        Text(
                          "Reward Points",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Icon(
                      Icons.lightbulb_outline_sharp,
                      size: 17,
                      color: Colors.green,
                    ),
                  ],
                )
              ],
            ),
          ),
          //2. four icons-------------------
          Container(
            // padding: EdgeInsets.all(18),
            decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconBox(
                  icon: "lib/images/bulb.png",
                  icon_name: "Load Money",
                ),
                IconBox(
                  icon: "lib/images/Topup.png",
                  icon_name: "Send Money",
                ),
                IconBox(
                  icon: "lib/images/Topup.png",
                  icon_name: "Bank Transfer",
                ),
                IconBox(
                  icon: "lib/images/bulb.png",
                  icon_name: "Remitance",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
