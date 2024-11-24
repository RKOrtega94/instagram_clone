import 'package:instagram_clone/src/data/models/post/post_model.dart';
import 'package:instagram_clone/src/domain/repositories/post_repository.dart';
import 'package:instagram_clone/src/domain/sources/post_source.dart';

class PostRepositoryImpl implements PostRepository {
  final PostSource _source;

  PostRepositoryImpl(this._source);

  @override
  Future<List<PostModel>> retrieveAllPosts() => _source.retrieveAllPosts();
}
