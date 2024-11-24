import 'package:get/get.dart';
import 'package:instagram_clone/src/presentation/pages/auth/login/login_page.dart';
import 'package:instagram_clone/src/presentation/pages/home/home_page.dart';
import 'package:instagram_clone/src/presentation/pages/splash/splash_screen.dart';

/// This file contains the router of application that is used to navigate between screens.
///
/// The project use the [Get] package to manage the navigation. https://pub.dev/packages/get
class AppRouter {
  /// List of routes of the application.
  static final routes = [
    GetPage(
      name: SplashScreen.route,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: LoginPage.route,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: HomePage.route,
      page: () => const HomePage(),
    )
  ];
}
