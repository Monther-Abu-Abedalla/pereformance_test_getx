import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:pereformance_test_getx/view/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
        home: HomeScreen()
    );
  }
}