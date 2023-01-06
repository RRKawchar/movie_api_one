import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_api_practice_1/screens/api_screen_one.dart';
import 'package:movie_api_practice_1/screens/api_screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ApiScreenTwo(),
    );
  }
}
