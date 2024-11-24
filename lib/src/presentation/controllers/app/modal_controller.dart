import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/src/presentation/widgets/bottom_sheet/bottom_sheet.dart';

class ModalController extends GetxController {
  bool _isModalOpen = false;

  bool get isModalOpen => _isModalOpen;

  void showModal(Widget child) {
    _isModalOpen = !_isModalOpen;
    update();
    bottomSheet(
      Get.context!,
      child: child,
    );
  }

  void hideModal() {
    _isModalOpen = !_isModalOpen;
    update();
  }
}
