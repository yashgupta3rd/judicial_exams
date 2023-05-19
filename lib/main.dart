import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:judicial_exams/controller/dashboard_controller.dart';
import 'package:judicial_exams/controller/examList_controller.dart';
import 'package:judicial_exams/signup.dart';
import 'package:judicial_exams/views/dashboard_page/dashboard.dart';
import 'package:judicial_exams/views/slider_pages/Slider1.dart';
import 'login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  Get.put<DashboardController>(DashboardController());
  Get.put<ExamListController>(ExamListController());
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'first',
    routes: {
      'first': (context) => Slider1(),
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'home': (context) => DashboardPage(),
    },
  ));
}


