import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    foregroundColor: Colors.black,
    surfaceTintColor: Colors.transparent,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    showSelectedLabels: false,
    showUnselectedLabels: false,
    elevation: 0,
    backgroundColor: Colors.white,
    selectedIconTheme: const IconThemeData(
      size: 30,
      color: Colors.black,
    ),
    unselectedIconTheme: IconThemeData(
      size: 25,
      color: Colors.grey[700]!,
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.black,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.black,
    elevation: 0,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    foregroundColor: Colors.black,
    surfaceTintColor: Colors.transparent,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    showSelectedLabels: false,
    showUnselectedLabels: false,
    elevation: 0,
    backgroundColor: Colors.black,
    selectedIconTheme: const IconThemeData(
      size: 30,
      color: Colors.white,
    ),
    unselectedIconTheme: IconThemeData(
      size: 25,
      color: Colors.grey[500]!,
    ),
  ),
);
