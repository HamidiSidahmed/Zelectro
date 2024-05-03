import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:zelectro/Utils/Constant/checkBox.dart';

class CartCard extends StatefulWidget {
  CartCard(
      {super.key,
      required this.check_Box,
      required this.title,
      required this.price,
      required this.image});
  bool check_Box;
  String title;
  String price;
  String image;
  @override
  State<CartCard> createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 90,
      margin: EdgeInsets.only(top: 25, left: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              overlayColor: MaterialStatePropertyAll(Colors.transparent),
              onTap: () {
                setState(() {
                  widget.check_Box = !widget.check_Box;
                });
              },
              child: Container(
                  margin: EdgeInsets.only(top: 35, left: 15, right: 15),
                  child: CheckBox(check_Box: widget.check_Box))),
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(widget.image, fit: BoxFit.cover),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 18, top: 5),
                child: Text(
                  widget.title,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 100,
                    margin: EdgeInsets.only(top: 36, left: 20),
                    child: Text(
                      widget.price,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                  ),
                  InkWell(
                    overlayColor: MaterialStatePropertyAll(Colors.transparent),
                    onTap: () {
                      print("+1");
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 15),
                      width: 28,
                      height: 28,
                      child: Center(
                          child: Text(
                        "-",
                        style: TextStyle(fontSize: 16),
                      )),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300, shape: BoxShape.circle),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 1),
                    width: 20,
                    child: Text(
                      "1",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      print('object');
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 5, right: 10),
                      width: 28,
                      height: 28,
                      child: Center(
                        child: Text("+"),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300, shape: BoxShape.circle),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
