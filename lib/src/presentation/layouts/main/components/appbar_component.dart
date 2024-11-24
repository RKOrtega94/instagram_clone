import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/src/presentation/controllers/app/modal_controller.dart';
import 'package:instagram_clone/src/application/core/constants/images.dart';
import 'package:instagram_clone/src/presentation/widgets/image/image_widget.dart';

class AppbarComponent extends StatelessWidget {
  const AppbarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ModalController>(
      builder: (controller) => AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(controller.isModalOpen ? 20 : 0),
          ),
          color: Theme.of(context).appBarTheme.backgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        padding: EdgeInsets.only(
          top: controller.isModalOpen ? 0 : MediaQuery.of(context).padding.top,
          left: 10,
          right: 10,
        ),
        child: Row(
          children: [
            Text(
              'Fakegram',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const Spacer(),
            IconButton(
              icon: const Badge(
                alignment: Alignment.topRight,
                backgroundColor: Colors.red,
                offset: Offset(-10, -5),
                padding: EdgeInsets.all(5),
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: AppImageWidget(
                    image: AppImages.heartIcon,
                  ),
                ),
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Badge(
                alignment: Alignment.topRight,
                backgroundColor: Colors.red,
                offset: Offset(-10, -5),
                padding: EdgeInsets.all(5),
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: AppImageWidget(
                    image: AppImages.chatIcon,
                  ),
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
