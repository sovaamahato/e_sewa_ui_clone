import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  String tabName;
  MyTab({required this.tabName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(14),color: Colors.grey[900]),
      child: Text(tabName,style: TextStyle(color: Colors.white),),
    );
  }
}