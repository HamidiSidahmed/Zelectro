import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:zelectro/view/projects/projects.dart';

class CustomTabBarProject extends StatefulWidget {
  const CustomTabBarProject({super.key});

  @override
  State<CustomTabBarProject> createState() => _CustomTabBarProjectState();
}

class _CustomTabBarProjectState extends State<CustomTabBarProject> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Column(
        children: [
          TabBar(
              isScrollable: true,
              labelColor: Color(0XFF2A6EF8),
              unselectedLabelColor: Colors.black,
              labelStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),
              automaticIndicatorColorAdjustment: true,
              dividerColor: Colors.transparent,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Color(0XFF2A6EF8),
              padding: EdgeInsets.only(top: 0, bottom: 0, right: 55),
              tabs: [
                Tab(
                  text: "Mobile",
                ),
                Tab(text: "Embedded"),
                Tab(
                  text: "IOT",
                ),
                Tab(
                  text: "AI",
                ),
              ]),
          Expanded(
              child: TabBarView(children: [
            ListView.builder(
              padding: EdgeInsets.only(top: 0, bottom: 20, left: 30, right: 30),
              itemCount: 10,
              itemBuilder: (context, index) {
                return ProjectsPage(image: "assets/aa.jpg");
              },
            ),
            ListView.builder(
              padding: EdgeInsets.only(top: 0, bottom: 20, left: 30, right: 30),
              itemCount: 10,
              itemBuilder: (context, index) {
                return ProjectsPage(image: "assets/aa.jpg");
              },
            ),
            ListView.builder(
              padding: EdgeInsets.only(top: 0, bottom: 20, left: 30, right: 30),
              itemCount: 10,
              itemBuilder: (context, index) {
                return ProjectsPage(image: "assets/aa.jpg");
              },
            ),
            ListView.builder(
              padding: EdgeInsets.only(top: 0, bottom: 20, left: 30, right: 30),
              itemCount: 10,
              itemBuilder: (context, index) {
                return ProjectsPage(
                  image: "assets/25.png",
                );
              },
            )
          ]))
        ],
      ),
    );
  }
}

class CustomTabBarStore extends StatefulWidget {
  const CustomTabBarStore({super.key});

  @override
  State<CustomTabBarStore> createState() => _CustomTabBarStoreState();
}

class _CustomTabBarStoreState extends State<CustomTabBarStore> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Column(
        children: [
          Container(
            width: 390,
            child: TabBar(
                isScrollable: true,
                dividerColor: Colors.transparent,
                labelColor: Color(0XFF2A6EF8),
                unselectedLabelColor: Colors.black,
                labelStyle: TextStyle(fontWeight: FontWeight.w500),
                automaticIndicatorColorAdjustment: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Color(0XFF2A6EF8),
                padding: EdgeInsets.only(top: 5, bottom: 5),
                tabs: [
                  Tab(
                    text: "Micro Controllers",
                  ),
                  Tab(text: "Sensors"),
                  Tab(
                    text: "Actuators",
                  ),
                  Tab(
                    text: "Electronics ",
                  ),
                ]),
          ),
          Expanded(
              child: TabBarView(children: [
            ListView.builder(
              padding: EdgeInsets.only(top: 0, bottom: 20, left: 30, right: 30),
              itemCount: 10,
              itemBuilder: (context, index) {
                return ProjectsPage(image: "assets/aa.jpg");
              },
            ),
            ListView.builder(
              padding: EdgeInsets.only(top: 0, bottom: 20, left: 30, right: 30),
              itemCount: 10,
              itemBuilder: (context, index) {
                return ProjectsPage(image: "assets/aa.jpg");
              },
            ),
            ListView.builder(
              padding: EdgeInsets.only(top: 0, bottom: 20, left: 30, right: 30),
              itemCount: 10,
              itemBuilder: (context, index) {
                return ProjectsPage(image: "assets/aa.jpg");
              },
            ),
            ListView.builder(
              padding: EdgeInsets.only(top: 0, bottom: 20, left: 30, right: 30),
              itemCount: 10,
              itemBuilder: (context, index) {
                return ProjectsPage(
                  image: "assets/25.png",
                );
              },
            )
          ]))
        ],
      ),
    );
  }
}
