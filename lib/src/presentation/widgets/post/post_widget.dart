import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/src/data/models/post/post_model.dart';
import 'package:instagram_clone/src/presentation/controllers/app/modal_controller.dart';
import 'package:instagram_clone/src/application/core/constants/images.dart';
import 'package:instagram_clone/src/presentation/widgets/image/image_widget.dart';
import 'package:instagram_clone/src/presentation/widgets/post/components/comments.dart';
import 'package:instagram_clone/src/presentation/widgets/post/components/post_user.dart';

class PostWidget extends StatelessWidget {
  final PostModel post;
  const PostWidget({
    required this.post,
    super.key,
  });

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
              PostUser(user: post.user),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz_rounded),
              ),
            ],
          ),
        ),
        AppImageWidget(image: post.filess!.first),
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
                  Comments(comments: post.comments),
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: RichText(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: post.user.username,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const TextSpan(
                    text: ' ',
                  ),
                  TextSpan(
                    text: post.comment,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
