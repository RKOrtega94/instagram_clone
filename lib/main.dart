import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/firebase_options.dart';
import 'package:instagram_clone/src/application/binding/_binding.dart';
import 'package:instagram_clone/src/application/core/theme/theme.dart';
import 'package:instagram_clone/src/presentation/pages/home/home_page.dart';
import 'package:instagram_clone/src/presentation/router/app_router.dart';

Future<void> main() async {
  await dotenv.load(fileName: '.env');

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
      getPages: AppRouter.routes,
      initialRoute: HomePage.route,
    );
  }
}
