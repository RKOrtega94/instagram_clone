// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostModelImpl _$$PostModelImplFromJson(Map<String, dynamic> json) =>
    _$PostModelImpl(
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      filess: json['filess'] as List<dynamic>?,
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$$PostModelImplToJson(_$PostModelImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'filess': instance.filess,
      'comment': instance.comment,
    };
