import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zelectro/Utils/Constant/cartCard.dart';
import 'package:zelectro/Utils/Constant/checkBox.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool check_Box = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  height: 17,
                  width: 390,
                  color: Colors.grey.withOpacity(0.2),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 35, left: 30, right: 15),
                      child: CheckBox(check_Box: check_Box),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 35, left: 5),
                      child: Text(
                        "Projects",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return CartCard(
                      check_Box: check_Box,
                      title: "Robotic Car",
                      price: "2500 DA",
                      image: "assets/cam.png",
                    );
                  },
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 35, left: 30, right: 15),
                      child: CheckBox(check_Box: check_Box),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 35, left: 20, right: 15),
                      child: Text(
                        "store",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                ListView.builder(
                  padding: EdgeInsets.only(bottom: 25),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return CartCard(
                      check_Box: check_Box,
                      title: "Robotic Car",
                      price: "2500 DA",
                      image: "assets/cam.png",
                    );
                  },
                )
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30,right: 220),
                  child: Text(
                    "Cart (100)",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: 22,
                  height: 22,
                  child: Image.asset("assets/trash.png"),)
              ],
            ),
            color: Colors.white,
            width: 390,
            height: 60,
          ),
        ],
      ),
    );
  }
}
