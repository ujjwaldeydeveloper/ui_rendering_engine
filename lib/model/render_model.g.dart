// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'render_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RenderModel _$RenderModelFromJson(Map<String, dynamic> json) => RenderModel(
      widgets: (json['widgets'] as List<dynamic>)
          .map((e) => Widget.fromJson(e as Map<String, dynamic>))
          .toList(),
      app: App.fromJson(json['app'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RenderModelToJson(RenderModel instance) =>
    <String, dynamic>{
      'app': instance.app,
      'widgets': instance.widgets,
    };
