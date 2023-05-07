import 'package:flutter/material.dart';
import 'package:duck_cart/all_creator_screen.dart';
import 'package:duck_cart/creator.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Creator Donation App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
        home: const AllCreatorsScreen(),
      );
  }
}
