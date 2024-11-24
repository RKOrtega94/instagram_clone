import 'package:instagram_clone/src/data/models/post/post_model.dart';
import 'package:instagram_clone/src/domain/repositories/post_repository.dart';

class RetrieveAllPostsUsecase {
  final PostRepository _repository;

  RetrieveAllPostsUsecase(this._repository);

  Future<List<PostModel>> execute() => _repository.retrieveAllPosts();
}
