import 'package:get/get.dart';
import 'package:instagram_clone/src/application/binding/app_binding.dart';
import 'package:instagram_clone/src/application/binding/psot_binding.dart';

/// A [Bindings] class for the main feature.
class MainBinding extends Bindings {
  @override
  void dependencies() {
    AppBinding().dependencies();
    PsotBinding().dependencies();
  }
}
