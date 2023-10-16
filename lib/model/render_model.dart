import 'package:json_annotation/json_annotation.dart';

import 'app_model.dart';
import 'banner.dart';
import 'horizontal_list.dart';
part "render_model.g.dart";

@JsonSerializable()
class RenderModel {
  App? app;
  List<BannerModel>? banner;
  List<HorizontalList>? horizontalList;

  RenderModel(this.app, this.banner, this.horizontalList);

  factory RenderModel.fromJson(Map<String, dynamic> json) =>
      _$RenderModelFromJson(json);

  Map<String, dynamic> toJson() => _$RenderModelToJson(this);
}
