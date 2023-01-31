import 'package:flutter/material.dart';

class ButtonForBar extends StatelessWidget {
  void Function()? onPressed;

  // 
  //orBar({Key? key}) : super(key: key);
  final icon;
  final buttonName;
  ButtonForBar({required this.icon,required this.buttonName,required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: 70,
     
      child: Column(
                    children: [
                      MaterialButton(onPressed:onPressed,
                      child: Icon(icon,size: 30,color: Colors.green,),
                      ),
                      Text(buttonName,style: TextStyle(color: Colors.white,fontSize: 10),)
                    ],
                  ),
    );
    
  }
}