import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zelectro/Utils/Clippers/Sign_Clipper.dart';
class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: SignClipper(),
                  child: Container(
                    decoration:const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0XFF2A6EF8), Color(0XFF5F20D0)])),
                    height: 350.h,
                  ),
                ),
                Positioned(
                  top: 35,
                  left: 85,
                  child: Container(
                    width: 225,
                    height: 225,
                    child: Image.asset("assets/loggo.png"),
                  ),
                ),
              ],
            ),
            Container(
              child: Text("Email",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
              margin: EdgeInsets.only(bottom: 5, left: 45),
            ),
            Container(
              margin: EdgeInsets.only(left: 30),
              width: 325,
              height: 50,
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                    hintText: "User Name",
                    hintStyle: TextStyle(fontSize: 14),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide:
                            BorderSide(color: Color(0XFF5F20D0), width: 15)),
                    focusColor: Color(0XFF5F20D0),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: Color(0XFF5F20D0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: Color(0XFF5F20D0)))),
              ),
            ),
            Container(
              child: Text("Password",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
              margin: EdgeInsets.only(bottom: 5, left: 45, top: 35),
            ),
            Container(
              margin: EdgeInsets.only(left: 30),
              width: 325,
              height: 50,
              child: TextField(
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.visibility_off,
                      size: 20,
                    ),
                    hintText: "Enter your password",
                    hintStyle: TextStyle(fontSize: 14),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide:
                            BorderSide(color: Color(0XFF5F20D0), width: 15)),
                    focusColor: Color(0XFF5F20D0),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: Color(0XFF5F20D0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: Color(0XFF5F20D0)))),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 40),
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                    color: Color(0XFF5F20D0),
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    decoration: TextDecoration.underline),
              ),
            ),
            InkWell(
              onTap: (){
              },
              child: Container(
                  margin: EdgeInsets.only(left: 30, top: 25),
                  width: 325,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0XFF5F20D0)),
                  child: Center(
                      child: Text(
                    "Sign in",
                    style: TextStyle(color: Colors.white),
                  ))),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 45, right: 10, left: 46),
                  width: 120,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  width: 35,
                  height: 35,
                  child: Image.asset("assets/google.png"),
                ),
                Container(
                  margin: EdgeInsets.only(top: 45, right: 38, left: 10),
                  width: 120,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 25, left: 75),
                    child: Text("Not registered yet?",style: TextStyle(color: Colors.grey),)),
                Container(
                  margin: EdgeInsets.only(top: 25),
                  child: Text(
                    " Create an account",
                    style: TextStyle(color: Color(0XFF5F20D0),fontWeight: FontWeight.w500),
                  ),
                )
              ],
            )
          ],
        ),
      ));
  }
}