import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/src/presentation/controllers/post/post_controller.dart';
import 'package:instagram_clone/src/presentation/widgets/post/post_widget.dart';
import 'package:instagram_clone/src/presentation/layouts/main/main_layout.dart';

class HomePage extends StatelessWidget {
  static const String route = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PostController>(
      builder: (PostController postController) => MainLayout(
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => PostWidget(
                  post: postController.posts[index],
                ),
                childCount: postController.posts.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
