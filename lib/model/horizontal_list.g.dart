// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'horizontal_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HorizontalList _$HorizontalListFromJson(Map<String, dynamic> json) =>
    HorizontalList(
      collections: (json['collections'] as List<dynamic>?)
          ?.map((e) => Collections.fromJson(e as Map<String, dynamic>))
          .toList(),
      cuisines: (json['cuisines'] as List<dynamic>?)
          ?.map((e) => Cuisines.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HorizontalListToJson(HorizontalList instance) =>
    <String, dynamic>{
      'collections': instance.collections,
      'cuisines': instance.cuisines,
    };
