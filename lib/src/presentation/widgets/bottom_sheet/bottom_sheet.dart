import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/src/presentation/controllers/app/modal_controller.dart';

Future<void> bottomSheet(
  BuildContext context, {
  required Widget child,
}) =>
    showModalBottomSheet(
      context: context,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      showDragHandle: true,
      isScrollControlled: true,
      useSafeArea: true,
      transitionAnimationController: AnimationController(
        duration: const Duration(milliseconds: 500),
        vsync: Navigator.of(context),
      ),
      builder: (context) =>
          NotificationListener<DraggableScrollableNotification>(
        onNotification: (notification) {
          if (notification.extent == notification.minExtent) {
            Navigator.of(context).pop();
          }
          return false;
        },
        child: Container(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          height: MediaQuery.of(context).size.height * 0.9 - 24,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: child,
          ),
        ),
      ),
    )
        .then(
          (_) => Get.find<ModalController>().hideModal(),
        )
        .catchError(
          (_) => Get.back(),
        );
