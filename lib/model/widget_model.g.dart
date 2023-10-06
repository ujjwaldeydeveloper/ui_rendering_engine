// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widget_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Widget _$WidgetFromJson(Map<String, dynamic> json) => Widget(
      type: json['type'] as String,
      image: json['image'] as String?,
      header_text: json['header_text'] as String?,
      footer_text: json['footer_text'] as String?,
      footer_icon: json['footer_icon'] as bool?,
      color: json['color'] as String?,
      title: json['title'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WidgetToJson(Widget instance) => <String, dynamic>{
      'type': instance.type,
      'image': instance.image,
      'header_text': instance.header_text,
      'footer_text': instance.footer_text,
      'footer_icon': instance.footer_icon,
      'color': instance.color,
      'title': instance.title,
      'items': instance.items,
    };
