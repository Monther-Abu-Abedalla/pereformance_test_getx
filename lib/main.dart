import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pereformance_test_getx/view_model/home_controller.dart';
import 'package:pereformance_test_getx/view/my_app.dart';

void main() {
  Get.put(HomeController(), permanent: true);
  runApp(const MyApp());
}
