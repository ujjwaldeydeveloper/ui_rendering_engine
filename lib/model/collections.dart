import 'package:json_annotation/json_annotation.dart';

part 'collections.g.dart';

@JsonSerializable()
class Collections {
  String? type;
  String? text;
  String? image;

  Collections({this.type, this.text, this.image});

  factory Collections.fromJson(Map<String, dynamic> json) => _$CollectionsFromJson(json);

  Map<String, dynamic> toJson() => _$CollectionsToJson(this);
}
