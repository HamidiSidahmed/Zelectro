import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:zelectro/Utils/Bars/BottomBar.dart';
import 'package:zelectro/Utils/Bars/TabBar.dart';
import 'package:zelectro/Utils/Constant/Stars.dart';
import 'package:zelectro/controller/Controller.dart';
import 'package:zelectro/view/cart.dart';
import 'package:zelectro/view/projects/projects.dart';
import 'package:animations/animations.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final AppController appController = Get.put(AppController());

  List CustomBars = [CustomTabBarProject(), CustomTabBarStore()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CustomBottomBar(),
        body: Stack(children: [
          appController.currentindex.value == 2
              ? Container()
              : Column(
                  children: [
                    Obx(
                      () {
                        return TweenAnimationBuilder<double>(
                          duration: Duration(milliseconds: 500),
                          tween: Tween<double>(
                            begin: appController.currentindex.value == 2
                                ? 0.0
                                : 0.0, // Starting value
                            end: appController.currentindex.value == 2
                                ? 1.0
                                : 0.0, // Ending value
                          ),
                          builder: (BuildContext context, double value,
                              Widget? child) {
                            return Transform.translate(
                              offset: Offset(
                                  0.0,
                                  value *
                                      -150), // Translate vertically based on value
                              child: Column(children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 0, top: 25),
                                      width: 50,
                                      height: 50,
                                      child: Image.asset("assets/loggo_v2.png"),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(
                                            left: 10, top: 40, right: 175),
                                        child: Text(
                                          "Zelectro",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500),
                                        )),
                                  ],
                                ),
                                Container(
                                    margin: EdgeInsets.only(top: 15),
                                    height: 32,
                                    width: 290,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    child: TextField(
                                      cursorOpacityAnimates: true,
                                      style: TextStyle(fontSize: 14),
                                      textAlign: TextAlign.justify,
                                      cursorColor: Colors.black,
                                      textAlignVertical:
                                          TextAlignVertical.center,
                                      cursorHeight: 20,
                                      cursorWidth: 1.3,
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.only(
                                              left: 15, bottom: 17),
                                          suffixIconConstraints: BoxConstraints(
                                              maxHeight: 20, minWidth: 40),
                                          suffixIcon: Icon(
                                            Icons.search,
                                            color: Colors.black,
                                          ),
                                          border: InputBorder.none),
                                    )),
                              ]),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
          Obx(
            () {
              return AnimatedContainer(
                duration: Duration(milliseconds: 500),
                height: 800,
                margin: EdgeInsets.only(
                    top: appController.currentindex.value == 2 ? 0 : 130),
                child: Obx(
                  () {
                    return PageTransitionSwitcher(
                        duration: Duration(milliseconds: 500),
                        transitionBuilder:
                            (child, primaryAnimation, secondaryAnimation) =>
                                FadeThroughTransition(
                                  animation: primaryAnimation,
                                  secondaryAnimation: secondaryAnimation,
                                  child: child,
                                ),
                        child: appController.currentindex.value < 2
                            ? CustomBars[appController.currentindex.value]
                            : Container(child: CartPage()));
                  },
                ),
              );
            },
          ),
        ]));
  }
}
