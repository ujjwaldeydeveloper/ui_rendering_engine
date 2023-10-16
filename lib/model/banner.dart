import 'package:json_annotation/json_annotation.dart';

part 'banner.g.dart';

@JsonSerializable()
class BannerModel {
  String? image;
  String? headerText;
  String? footerText;
  bool? footerIcon;
  String? color;

  BannerModel(
    this.image,
    this.headerText,
    this.footerText,
    this.footerIcon,
    this.color,
  );

  factory BannerModel.fromJson(Map<String, dynamic> json) => _$BannerModelFromJson(json);

  Map<String, dynamic> toJson() => _$BannerModelToJson(this);
}
