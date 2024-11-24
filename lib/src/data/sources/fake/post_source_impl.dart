import 'package:instagram_clone/src/application/data/post_data.dart';
import 'package:instagram_clone/src/data/models/post/post_model.dart';
import 'package:instagram_clone/src/domain/sources/post_source.dart';

class PostFakeSourceImpl implements PostSource {
  final PostData _postData = PostData();

  @override
  Future<List<PostModel>> retrieveAllPosts() async =>
      await _postData.generatePost();
}
