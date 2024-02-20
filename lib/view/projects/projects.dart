import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zelectro/view/projects/InfoProjectPage.dart';
class ProjectsPage extends StatelessWidget {
  String image;
  ProjectsPage({super.key,required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
                    width: 200,
                    height: 150,
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade500,
                            blurRadius: 2,
                          ),
                        ]),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Get.to(()=>InfoProjectPage(image: image),transition: Transition.fade);
                          },
                          child: Container(
                            width: 165,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child:
                                  Image.asset(image, fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Container(
                          width: 165,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.to(()=>InfoProjectPage(image: image),transition: Transition.fade);
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 10, right: 10),
                                  alignment: Alignment.centerRight,
                                  child: Icon(Icons.info),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Text(
                                  "Robotic car",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text("Easy",
                                    style: TextStyle(
                                      color: Colors.green,
                                    )),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 70, top: 20),
                                    child: Text(
                                      "4.6",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 0, top: 20),
                                      child: Icon(
                                        Icons.star,
                                        size: 15,
                                      )),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
  }
}