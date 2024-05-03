import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zelectro/view/home.dart';
import 'package:zelectro/view/signPages/SignIn.dart';

void main() {
  runApp(
    ScreenUtilInit(
    designSize: Size(393, 804),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context, child) {
      WidgetsFlutterBinding.ensureInitialized();
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      );
    },
  ));
}
