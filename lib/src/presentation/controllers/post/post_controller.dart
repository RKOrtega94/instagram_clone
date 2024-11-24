import 'package:get/get.dart';
import 'package:instagram_clone/src/data/models/post/post_model.dart';
import 'package:instagram_clone/src/domain/usecases/post/retrieve_all_posts_usecase.dart';

/// Post Controller
///
/// This controller is used to:
/// - Retrie post
/// - Add post
/// - Edit post
/// - Delete post
class PostController extends GetxController {
  final RetrieveAllPostsUsecase _retrieveAll;

  PostController(this._retrieveAll);

  final List<PostModel> posts = [];

  List<PostModel> get allPosts => posts;

  @override
  void onInit() {
    _retrieveAllPosts();
    super.onInit();
  }

  Future<void> _retrieveAllPosts() async {
    final result = await _retrieveAll.execute();
    posts.addAll(result);
    update();
  }
}
