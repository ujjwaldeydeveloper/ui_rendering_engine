// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerModel _$BannerModelFromJson(Map<String, dynamic> json) => BannerModel(
      json['image'] as String?,
      json['headerText'] as String?,
      json['footerText'] as String?,
      json['footerIcon'] as bool?,
      json['color'] as String?,
    );

Map<String, dynamic> _$BannerModelToJson(BannerModel instance) =>
    <String, dynamic>{
      'image': instance.image,
      'headerText': instance.headerText,
      'footerText': instance.footerText,
      'footerIcon': instance.footerIcon,
      'color': instance.color,
    };
