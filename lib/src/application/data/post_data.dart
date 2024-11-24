import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:instagram_clone/src/application/data/users.dart';
import 'package:instagram_clone/src/data/models/comment/comment_model.dart';
import 'package:instagram_clone/src/data/models/post/post_model.dart';
import 'package:instagram_clone/src/data/models/user/user_model.dart';

class PostData {
  final Dio _dio = Dio();
  final String _baseApi = 'https://api.api-ninjas.com/v1/';

  Future<List<PostModel>> generatePost() async {
    final List<PostModel> posts = [];
    for (int i = 0; i < 10; i++) {
      final CommentModel comment = await _getComments();
      posts.add(
        PostModel(
          user: usersData[i % usersData.length],
          filess: _getFiles(),
          comment: comment.comment,
          comments: await Future.wait(
            List.generate(
              Random().nextInt(10),
              (index) => _getComments(),
            ),
          ),
        ),
      );
    }
    return posts;
  }

  List<String> _getFiles() {
    final int numFiles = Random().nextInt(10);
    if (numFiles == 0) {
      return [
        'https://picsum.photos/id/${Random().nextInt(100)}/500/500',
      ];
    } else {
      final List<String> files = [];
      for (int i = 0; i < numFiles; i++) {
        files.add('https://picsum.photos/id/${Random().nextInt(100)}/500/500');
      }
      return files;
    }
  }

  Future<CommentModel> _getComments() async {
    final Response response = await _dio.get(
      '${_baseApi}randomuser',
      options: Options(
        headers: {
          'X-Api-Key': dotenv.env['API_NINJA_KEY'],
        },
      ),
    );
    final Map<String, dynamic> data = response.data;

    final Response textResponse = await _dio.get(
      '${_baseApi}loremipsum?paragraphs=${Random().nextInt(2)}',
      options: Options(
        headers: {
          'X-Api-Key': dotenv.env['API_NINJA_KEY'],
        },
      ),
    );
    final Map<String, dynamic> textData = textResponse.data;

    return CommentModel(
      user: UserModel(
        username: data['username'],
        image: 'https://picsum.photos/id/${Random().nextInt(100)}/500/500',
      ),
      comment: textData['text'],
    );
  }
}
