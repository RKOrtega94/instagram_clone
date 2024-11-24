import 'package:flutter/material.dart';
import 'package:instagram_clone/src/presentation/layouts/main/main_layout.dart';
import 'package:instagram_clone/src/presentation/pages/home/components/post_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => const PostComponent(),
              childCount: 1000,
            ),
          ),
        ],
      ),
    );
  }
}
