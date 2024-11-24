import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/src/data/repositories/post_repository_impl.dart';
import 'package:instagram_clone/src/data/sources/fake/post_source_impl.dart';
import 'package:instagram_clone/src/domain/repositories/post_repository.dart';
import 'package:instagram_clone/src/domain/sources/post_source.dart';
import 'package:instagram_clone/src/domain/usecases/post/retrieve_all_posts_usecase.dart';
import 'package:instagram_clone/src/presentation/controllers/post/post_controller.dart';

/// A [Bindings] class for the post feature.
class PsotBinding extends Bindings {
  @override
  void dependencies() {
    // Sources
    Get.lazyPut<PostSource>(() =>
        PostFakeSourceImpl()); // Fake data source, you can remove or replace this source if you have a real one.

    // Repositories
    Get.lazyPut<PostRepository>(
      () => PostRepositoryImpl(
        dotenv.env['SOURCE'] == 'fake' ? Get.find() : Get.find(),
      ),
      fenix: true,
    );

    // Use cases
    Get.lazyPut(
      () => RetrieveAllPostsUsecase(Get.find()),
      fenix: true,
    );

    // Controllers
    Get.put(
      PostController(Get.find()),
      permanent: true,
    );
  }
}
