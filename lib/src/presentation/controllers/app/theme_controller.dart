import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  late Brightness _brightness;

  void initTheme() {
    _brightness = Get.isDarkMode ? Brightness.dark : Brightness.light;
    _updateSystemTheme();
  }

  void _updateSystemTheme() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: _brightness,
      statusBarBrightness: _brightness,
      systemNavigationBarColor: Theme.of(Get.context!).scaffoldBackgroundColor,
      systemNavigationBarIconBrightness: _brightness,
    ));
    update();
  }

  void changeTheme() {
    Get.changeThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
    _brightness = Get.isDarkMode ? Brightness.dark : Brightness.light;
    _updateSystemTheme();
  }
}
