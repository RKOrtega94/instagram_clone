import 'package:flutter/material.dart';
import 'package:instagram_clone/src/data/models/user/user_model.dart';
import 'package:instagram_clone/src/presentation/widgets/image/image_widget.dart';

class PostUser extends StatelessWidget {
  final UserModel user;
  const PostUser({
    required this.user,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: const SizedBox(
            width: 40,
            height: 40,
            child: AppImageWidget(
              image: 'assets/profile.jpg',
            ),
          ),
        ),
        const SizedBox(width: 8.0),
        Text(
          user.username,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
