// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collections.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Collections _$CollectionsFromJson(Map<String, dynamic> json) => Collections(
      type: json['type'] as String?,
      text: json['text'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$CollectionsToJson(Collections instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
      'image': instance.image,
    };
