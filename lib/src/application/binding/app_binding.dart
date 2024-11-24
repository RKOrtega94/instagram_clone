import 'package:get/get.dart';
import 'package:instagram_clone/src/application/controllers/app/modal_controller.dart';
import 'package:instagram_clone/src/application/controllers/app/theme_controller.dart';

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
  }
}
