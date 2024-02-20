import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        return NavigationBar(
          
          indicatorColor: Color(0XFF2A6EF8).withOpacity(0.2),
            backgroundColor: Color(0xFFdddddd).withOpacity(0.9),
        
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            selectedIndex: appController.currentindex.value,
            onDestinationSelected: (value) {
              appController.currentindex.value = value;
              print(appController.currentindex);
              appController.intialize_value.value=0;
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
                    child: Icon(Icons.shopping_cart_outlined,color: Colors.black,size: 26,),
                  ),
                  label: "cart")
            ]);
      },
    );
  }
}
