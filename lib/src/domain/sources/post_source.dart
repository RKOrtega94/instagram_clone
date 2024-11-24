import 'package:instagram_clone/src/data/models/post/post_model.dart';

/// An abstract class for the post source.
abstract class PostSource {
  /// Retrieves all posts.
  ///
  /// Returns a [List] of [PostModel]s.
  Future<List<PostModel>> retrieveAllPosts();
}
