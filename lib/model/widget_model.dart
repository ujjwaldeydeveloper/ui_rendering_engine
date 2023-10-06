import 'package:json_annotation/json_annotation.dart';

import 'item_model.dart';
part 'widget_model.g.dart';

@JsonSerializable()
class Widget {
  String type;
  String? image;
  String? header_text;
  String? footer_text;
  bool? footer_icon;
  String? color;
  String? title;
  List<Item>? items;

  Widget({
    required this.type,
    this.image,
    this.header_text,
    this.footer_text,
    this.footer_icon,
    this.color,
    this.title,
    this.items,
  });

  factory Widget.fromJson(Map<String, dynamic> json) => _$WidgetFromJson(json);

  Map<String, dynamic> toJson() => _$WidgetToJson(this);
}
