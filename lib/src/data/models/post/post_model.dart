import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:instagram_clone/src/data/models/comment/comment_model.dart';
import 'package:instagram_clone/src/data/models/user/user_model.dart';

part 'post_model.freezed.dart';

part 'post_model.g.dart';

@freezed
class PostModel with _$PostModel {
  const factory PostModel({
    required UserModel user,
    List<dynamic>? filess,
    String? comment,
    @Default([]) List<CommentModel> comments,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}
