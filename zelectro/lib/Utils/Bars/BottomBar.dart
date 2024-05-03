import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zelectro/Utils/Constant/checkBox.dart';
import 'package:zelectro/controller/Controller.dart';

class CustomBottomBar extends StatefulWidget {
  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  final AppController appController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return AnimatedContainer(
          duration: Duration(milliseconds: 100),
          color: Colors.white,
          height: appController.currentindex.value == 2 ? 115 : 60,
          child: SingleChildScrollView(
            child: Column(
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 100),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.08),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 25, right: 10),
                          child: CheckBox(check_Box: false)),
                      Text(
                        "All",
                        style: TextStyle(fontSize: 15),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 50),
                        width: 125,
                        child: Center(
                            child: Text(
                          "25000 DA",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        )),
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                alignment: Alignment.center,
                                child: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 0),
                                        width: 215,
                                        height: 38,
                                        child: TextField(
                                          cursorColor: Colors.black,
                                          cursorWidth: 1.3,
                                          cursorHeight: 18,
                                          style: TextStyle(fontSize: 14.sp),
                                          decoration: InputDecoration(
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      width: 1.5,
                                                      color:
                                                          Color(0XFF2A6EF8))),
                                              disabledBorder:
                                                  OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Color(
                                                              0XFF2A6EF8))),
                                              errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color:
                                                          Color(0XFF2A6EF8))),
                                              labelText: "name",
                                              floatingLabelStyle: TextStyle(
                                                  color: Color(0XFF2A6EF8),
                                                  fontSize: 14.sp),
                                              labelStyle:
                                                  TextStyle(fontSize: 13.5.sp),
                                              contentPadding: EdgeInsets.only(
                                                   left: 15).r,
                                              border: OutlineInputBorder()),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 20),
                                        width: 215,
                                        height: 38,
                                        child: TextField(
                                          cursorColor: Colors.black,
                                          cursorWidth: 1.3,
                                          cursorHeight: 18,
                                          style: TextStyle(fontSize: 14.sp),
                                          decoration: InputDecoration(
                                              floatingLabelStyle: TextStyle(
                                                  color: Color(0XFF2A6EF8),
                                                  fontSize: 14.sp),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      width: 1.5,
                                                      color:
                                                          Color(0XFF2A6EF8))),
                                              disabledBorder:
                                                  OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Color(
                                                              0XFF2A6EF8))),
                                              errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color:
                                                          Color(0XFF2A6EF8))),
                                              labelText: "Phone number",
                                              labelStyle:
                                                  TextStyle(fontSize: 13.5.sp),
                                              contentPadding: EdgeInsets.only(
                                                   left: 15).r,
                                              border: OutlineInputBorder()),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 20),
                                        width: 215,
                                        height: 38,
                                        child: TextField(
                                          cursorColor: Colors.black,
                                          cursorWidth: 1.3,
                                          cursorHeight: 18,
                                          style: TextStyle(fontSize: 14.sp),
                                          decoration: InputDecoration(
                                              floatingLabelStyle: TextStyle(
                                                  color: Color(0XFF2A6EF8),
                                                  fontSize: 14.sp),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      width: 1.5,
                                                      color:
                                                          Color(0XFF2A6EF8))),
                                              disabledBorder:
                                                  OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Color(
                                                              0XFF2A6EF8))),
                                              errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color:
                                                          Color(0XFF2A6EF8))),
                                              labelText: "Adress Email",
                                              labelStyle:
                                                  TextStyle(fontSize: 13.5.sp),
                                              contentPadding: EdgeInsets.only(
                                                   left: 15).r,
                                              border: OutlineInputBorder()),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 20),
                                        width: 215,
                                        height: 38,
                                        child: TextField(
                                          cursorColor: Colors.black,
                                          cursorWidth: 1.3,
                                          cursorHeight: 18,
                                          style: TextStyle(fontSize: 14.sp),
                                          decoration: InputDecoration(
                                              floatingLabelStyle: TextStyle(
                                                  color: Color(0XFF2A6EF8),
                                                  fontSize: 14.sp),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      width: 1.5,
                                                      color:
                                                          Color(0XFF2A6EF8))),
                                              disabledBorder:
                                                  OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Color(
                                                              0XFF2A6EF8))),
                                              errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color:
                                                          Color(0XFF2A6EF8))),
                                              labelText: "Adress",
                                              labelStyle:
                                                  TextStyle(fontSize: 13.5.sp),
                                              contentPadding: EdgeInsets.only(
                                                   left: 15).r,
                                              border: OutlineInputBorder()),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 25.r),
                                        width: 125,
                                        height: 40,
                                        child: Center(
                                          child: Text(
                                            "Buy",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25.r),
                                            color: Color(0XFF2A6EF8)),
                                      )
                                    ],
                                  ),
                                  width: 100,
                                  height: 350,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0XFF2A6EF8),
                              borderRadius: BorderRadius.circular(25.r)),
                          width: 125.w,
                          height: 45.h,
                          child: Center(
                            child: Text(
                              "Checkout (10)",
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  height: appController.currentindex.value == 2 ? 55 : 0,
                ),
                NavigationBar(
                    elevation: 0.8,
                    indicatorColor: Color(0XFF2A6EF8).withOpacity(0.2),
                    backgroundColor: Colors.white,
                    labelBehavior:
                        NavigationDestinationLabelBehavior.onlyShowSelected,
                    selectedIndex: appController.currentindex.value,
                    onDestinationSelected: (value) {
                      appController.currentindex.value = value;
                      print(appController.currentindex);
                      appController.intialize_value.value = 0;
                    },
                    height: 60,
                    destinations: [
                      NavigationDestination(
                          icon: Container(
                            width: 28,
                            height: 28,
                            child: Image.asset(
                              "icons/projects.png",
                            ),
                          ),
                          label: "projects"),
                      NavigationDestination(
                          icon: Container(
                            width: 28,
                            height: 28,
                            child: Image.asset(
                              "icons/shop.png",
                            ),
                          ),
                          label: "store"),
                      NavigationDestination(
                          icon: Container(
                            width: 28,
                            height: 28,
                            child: Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.black,
                              size: 26,
                            ),
                          ),
                          label: "cart")
                    ]),
              ],
            ),
          ),
        );
      },
    );
  }
}
