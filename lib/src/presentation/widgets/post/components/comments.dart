import 'package:flutter/material.dart';
import 'package:instagram_clone/src/data/models/comment/comment_model.dart';

class Comments extends StatelessWidget {
  final List<CommentModel> comments;
  const Comments({required this.comments, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: comments.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => LayoutBuilder(
        builder: (context, constraints) => Container(
          width: constraints.maxHeight,
          margin: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(comments[index].user.image),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: RichText(
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: comments[index].user.username,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const TextSpan(text: ' '),
                      TextSpan(
                        text: comments[index].comment,
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
