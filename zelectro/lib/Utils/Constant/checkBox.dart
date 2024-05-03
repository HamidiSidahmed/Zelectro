import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckBox extends StatelessWidget {
  CheckBox({super.key,required this.check_Box});
bool check_Box;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    
                    width: 18.w,
                    height: 18.w,
                    decoration: BoxDecoration(
                      color: check_Box==false ? Colors.white:Color(0XFF2A6EF8),
                      shape: BoxShape.circle,border: Border.all(color: Colors.grey,width:check_Box==false? 1.1:0)),
                    child: check_Box==false ? null:Container(
                      margin: EdgeInsets.only(bottom: 0),
                      child: Icon(Icons.check,color: Colors.white,size: 15.r,)),
                  );
  }
}