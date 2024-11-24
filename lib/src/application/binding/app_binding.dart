import 'package:get/get.dart';
import 'package:instagram_clone/src/presentation/controllers/app/modal_controller.dart';
import 'package:instagram_clone/src/presentation/controllers/app/splash_controller.dart';
import 'package:instagram_clone/src/presentation/controllers/app/theme_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      ThemeController(),
      permanent: true,
    );
    Get.put(
      ModalController(),
      permanent: true,
    );
    Get.lazyPut(
      () => SplashController(),
    );
  }
}
