import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

class InfoProjectPage extends StatefulWidget {
  String image;
  InfoProjectPage({super.key, required this.image});

  @override
  State<InfoProjectPage> createState() => _InfoProjectPageState();
}

class _InfoProjectPageState extends State<InfoProjectPage> {
  @override
  int number_of_order = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.white),
        margin: EdgeInsets.only(bottom: 5, left: 0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 45, bottom: 5, top: 5),
                  child: Text("Total price",
                      style: TextStyle(color: Colors.grey[700], fontSize: 13)),
                ),
                Container(
                  margin: EdgeInsets.only(left: 45),
                  child: Text(
                    "2500 DA",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                )
              ],
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5, top: 2),
                    child: Text(
                      "Add to cart",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              margin: EdgeInsets.only(left: 100, bottom: 15),
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                  color: Color(0XFF2A6EF8),
                  borderRadius: BorderRadius.circular(25)),
            )
          ],
        ),
        height: 75,
        width: ScreenUtil().screenWidth,
      ),
      body: Stack(
        children: [
          Container(
            height: 300,
            width: ScreenUtil().screenWidth,
            child: Image.asset(
              widget.image,
              fit: BoxFit.fill,
            ),
          ), 
          SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(35)),
              margin: EdgeInsets.only(top: 285),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 30),
                        child: Text(
                          "Robotic Car",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        width: 250,
                        height: 57,
                        child: Stack(
                          children: [
                            Container(
                              margin:
                                  EdgeInsets.only(top: 20, left: 110),
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(25)),
                              child: Center(
                                child: Container(
                                  child: Text("$number_of_order",
                                      style: TextStyle(fontSize: 16)),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 14,
                              left: 100,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    number_of_order -= 1;
                                    if(number_of_order<=0) number_of_order=0;
                                  });
                                  print(number_of_order);
                                },
                                child: Container(
                                  width: 60,
                                  height: 50,
                                  child: Center(
                                    child: Text(
                                      "-",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 14,
                              left: 160,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    number_of_order += 1;
                                  });
                                },
                                child: Container(
                                  width: 60,
                                  height: 50,
                                  child: Center(
                                    child: Text(
                                      "+",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30, top: 25),
                    child: Text("Components",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 55,
                    child: ListView.builder(
                      padding: EdgeInsets.only(right: 20),
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.3),
                              border: Border.all(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(25)),
                          margin: EdgeInsets.only(top: 20, left: 20),
                          child: Center(
                            child: Text(
                              "Esp32 Arduino",
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25, left: 30),
                    child: Text(
                      "Description",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 30),
                    child: Text(
                      "this project is based on esp32 andthis project is based on esp32 and arduino and mpu605vsdvdvdsvsnkjkbvsqblvcbjkvqsqbhvksjhdvcdsfdsfdsljnfsdkjbhis project is based on esp32 andthis project is based on esp32 and arduino and mpu605vsdvdvdsvsnkjkbvsqblvcbjkvqsqbhvksjhdvcdsfdsfdsljnfsdkjbhis project is based on esp32 andthis project is based on esp32 and arduino and mpu605vsdvdvdsvsnkjkbvsqblvcbjkvqsqbhvksjhdvcdsfdsfdsljnfsdkjbhis project is based on esp32 andthis project is based on esp32 and arduino and mpu605vsdvdvdsvsnkjkbvsqblvcbjkvqsqbhvksjhdvcdsfdsfdsljnfsdkjbhis project is based on esp32 andthis project is based on esp32 and arduino and mpu605vsdvdvdsvsnkjkbvsqblvcbjkvqsqbhvksjhdvcdsfdsfdsljnfsdkjbhis project is based on esp32 andthis project is based on esp32 and arduino and mpu605vsdvdvdsvsnkjkbvsqblvcbjkvqsqbhvksjhdvcdsfdsfdsljnfsdkjbhis project is based on esp32 andthis project is based on esp32 and arduino and mpu605vsdvdvdsvsnkjkbvsqblvcbjkvqsqbhvksjhdvcdsfdsfdsljnfsdkjbbvsd, vsd,bvbsbvskjvsbjbkjfvbjksbjvsjkvhsfbvhksfbkhvsfhkbvbhksfbkhvskbhcx ,nv sfb0 it can be xvbvxbvbvxvcbvxcbvxcbvxcbvcxbvcxbthis project is based on esp32 and arduino and mpu6050 it can be xvbvxbvbvxvcbvxcbvxcbvxcbvcxbvcxb arduino and mpu6050 it can be xvbvxbvbvxvcbvxcbvxcbvxcbvcxbvcxbthis project is based on esp32 and arduino and mpu6050 it can be xvbvxbvbvxvcbvxcbvxcbvxcbvcxbvcxbthis project is based on esp32 and arduino and mpu6050 it can be xvbvxbvbvxvcbvxcbvxcbvxcbvcxbvcxb",
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 20),
            child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(Icons.arrow_back_ios_new)),
         
          ),
        ],
      ),
    );
  }
}
