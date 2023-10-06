import 'package:json_annotation/json_annotation.dart';

import 'app_model.dart';
import 'widget_model.dart';
part "render_model.g.dart";

@JsonSerializable()
class RenderModel {
  final App app;
  final List<Widget> widgets;

  RenderModel({
    required this.widgets,
    required this.app,
  });

  factory RenderModel.fromJson(Map<String, dynamic> json) =>
      _$RenderModelFromJson(json);

  Map<String, dynamic> toJson() => _$RenderModelToJson(this);
}
