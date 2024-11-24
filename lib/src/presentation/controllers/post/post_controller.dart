import 'package:get/get.dart';
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
}
