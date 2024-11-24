import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/src/application/controllers/app/modal_controller.dart';
import 'package:instagram_clone/src/application/core/constants/images.dart';
import 'package:instagram_clone/src/presentation/widgets/image/image_widget.dart';

class PostComponent extends StatelessWidget {
  const PostComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 10,
          ),
          child: Row(
            children: [
              const CircleAvatar(
                radius: 20.0,
                backgroundImage: AssetImage('assets/images/avatar.jpg'),
              ),
              const SizedBox(width: 8.0),
              const Text('username'),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz_rounded),
              ),
            ],
          ),
        ),
        const Placeholder(),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const SizedBox(
                  width: 30,
                  height: 30,
                  child: AppImageWidget(
                    image: AppImages.heartFilledIcon,
                    filterColor: Colors.red,
                  ),
                ),
              ),
              IconButton(
                onPressed: () => Get.find<ModalController>().showModal(
                  const Placeholder(),
                ),
                icon: const SizedBox(
                  width: 30,
                  height: 30,
                  child: AppImageWidget(
                    image: AppImages.commentIcon,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const SizedBox(
                  width: 30,
                  height: 30,
                  child: AppImageWidget(
                    image: AppImages.sendIcon,
                  ),
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const SizedBox(
                  width: 30,
                  height: 30,
                  child: AppImageWidget(
                    image: AppImages.bookmarkIcon,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
