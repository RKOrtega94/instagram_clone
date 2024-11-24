import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/src/presentation/controllers/app/modal_controller.dart';
import 'package:instagram_clone/src/presentation/controllers/app/theme_controller.dart';
import 'package:instagram_clone/src/presentation/layouts/main/components/appbar_component.dart';
import 'package:instagram_clone/src/presentation/layouts/main/components/bottom_nabvar_component.dart';

/// Main layout of the application.
///
/// This layout is used to wrap the main content of the application.
///
/// ```dart
/// MainLayout(
///  child: // Your content here
/// ),
/// ```
class MainLayout extends StatelessWidget {
  final Widget child;
  const MainLayout({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    themeController.initTheme();
    return Scaffold(
      backgroundColor: Colors.black,
      extendBody: true,
      body: GetBuilder<ModalController>(
        builder: (controller) => AnimatedScale(
          scale: controller.isModalOpen ? 0.90 : 1.0,
          duration: const Duration(milliseconds: 500),
          child: Column(
            children: [
              const AppbarComponent(),
              Expanded(
                child: LayoutBuilder(
                  builder: (context, constraints) => Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight,
                    color: Theme.of(context).scaffoldBackgroundColor,
                    child: child,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNabvarComponent(),
    );
  }
}
