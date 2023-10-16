// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'render_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RenderModel _$RenderModelFromJson(Map<String, dynamic> json) => RenderModel(
      json['app'] == null
          ? null
          : App.fromJson(json['app'] as Map<String, dynamic>),
      (json['banner'] as List<dynamic>?)
          ?.map((e) => BannerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['horizontalList'] as List<dynamic>?)
          ?.map((e) => HorizontalList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RenderModelToJson(RenderModel instance) =>
    <String, dynamic>{
      'app': instance.app,
      'banner': instance.banner,
      'horizontalList': instance.horizontalList,
    };
