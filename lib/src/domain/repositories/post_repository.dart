import 'package:instagram_clone/src/data/models/post/post_model.dart';

abstract class PostRepository {
  /// Retrieves all posts.
  ///
  /// Returns a [List] of [PostModel]s.
  Future<List<PostModel>> retrieveAllPosts();
}
