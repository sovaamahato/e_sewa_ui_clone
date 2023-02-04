import 'package:flutter/material.dart';

class MyPaymentsPage extends StatelessWidget {
  const MyPaymentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: Text("My Payments",style: TextStyle(color: Colors.white),)),
    );
  }
}