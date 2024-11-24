import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/src/application/binding/_binding.dart';
import 'package:instagram_clone/src/application/core/theme/theme.dart';
import 'package:instagram_clone/src/presentation/pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Instagram Clone',
      initialBinding: MainBinding(),
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: Get.isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: const HomePage(),
    );
  }
}
