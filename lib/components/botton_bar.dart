import 'package:esewa_clone_ui/components/buton_for_bar.dart';
import 'package:esewa_clone_ui/pages/my_offers_page.dart';
import 'package:esewa_clone_ui/pages/my_payments_page.dart';
import 'package:esewa_clone_ui/pages/statement_page.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  //to open statement page------------
  void openStatementPage() {
    setState(() {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return MyStatementpage();
      }));
    });
  }
  //to open statement page------------
  void openPaymentsPage() {
    setState(() {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return MyPaymentsPage();
      }));
    });
  }
  //to open statement page------------
  void openOffersPage() {
    setState(() {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return MyOffersPage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.grey[800],
      shape: CircularNotchedRectangle(),
      child: Container(
          height: 65,
          child: Row(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonForBar(
                        icon: Icons.home_outlined,
                        buttonName: "Home",
                        onPressed: () {},
                      ),
                      ButtonForBar(
                        icon: Icons.note_alt_outlined,
                        buttonName: "Statement",
                        onPressed: openStatementPage,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 6, top: 40),
                    child: Text(
                      "Scan & pay",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Row(
                    children: [
                      ButtonForBar(
                        icon: Icons.calendar_month_outlined,
                        buttonName: "My Payments",
                        onPressed: openPaymentsPage,
                      ),
                      ButtonForBar(
                        icon: Icons.note_add_outlined,
                        buttonName: "Offers",
                        onPressed: openOffersPage,
                      ),
                    ],
                  )
                ],
              ),
            ],
          )),
    );
  }
}
